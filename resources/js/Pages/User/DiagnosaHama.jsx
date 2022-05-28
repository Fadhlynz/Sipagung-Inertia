import React, { useEffect, useState } from "react";
import { Inertia } from "@inertiajs/inertia";
import { Grid, _ } from "gridjs-react";
import { useRecoilValue } from "recoil";
import User from "../../Layouts/User";
import { baseUrlApi } from "../../Store/Global";
import * as BsIcons from "react-icons/bs";
import * as FaIcons from "react-icons/fa";
import axios from "axios";

export default function DiagnosaHama() {
    const url = useRecoilValue(baseUrlApi);
    const [kondisihamas, setKondisiHamas] = useState([]);

    const [kondisiHamaData, setKondisiHamaData] = useState({
        kondisihama: "",
    });

    const submitDiagnosaHama = (e) => {
        e.preventDefault();

        Inertia.post("hasildiagnosa", kondisiHamaData, {
            onSuccess: () => {
                setKondisiHamaData((kondisiHamaData) => ({
                    ...kondisiHamaData,
                    kondisihama: "",
                }));
            },
        });
    };

    // useEffect(() => {
    //     const getKondisiHamas = async () => {
    //         await axios.get(url + "kondisihama-data").then((res) => {
    //             setKondisiHamas(res.data);
    //         });
    //     };
    //     getKondisiHamas();
    // });

    return (
        <User judul="Diagnosa Hama">
            <div className="p-4">
                <div className="bg-green-600 rounded-xl p-5 shadow-xl shadow-blue-600/10">
                    <div className="flex items-center space-x-2">
                        <BsIcons.BsFillExclamationTriangleFill
                            size={16}
                            className="text-white"
                        />
                        <h4 className="text-white text-lg">Perhatian !</h4>
                    </div>
                    <path className="flex text-5sm text-white">
                        Silahkan memilih gejala sesuai dengan kondisi ayam anda,
                        anda dapat memilih kepastian kondisi ayam dari pasti
                        tidak sampai pasti ya, jika sudah tekan tombol proses di
                        bawah untuk melihat hasil.
                    </path>
                </div>
            </div>
            <form
                onSubmit={submitDiagnosaHama}
                className="flex flex-col space-y-3"
            >
                <div className="p-4 space-y-3">
                    <div className="flex flex-col">
                        <Grid
                            server={{
                                url: url + "gejalahama-data",
                                then: (data) =>
                                    data.map((gejalahama, index) => [
                                        index + 1,
                                        "GH" + (index + 1),
                                        gejalahama.name,
                                        _(
                                            <select
                                                onChange={(e) => {
                                                    setKondisiHamaData(
                                                        (kondisiHamaData) => ({
                                                            ...kondisiHamaData,
                                                            kondisihama:
                                                                e.target.value,
                                                        })
                                                    );
                                                }}
                                                value={
                                                    kondisiHamaData.kondisihama
                                                }
                                                name="kondisihama"
                                                id="kondisihama"
                                                className="border-2 border-gray-200 focus:border-white focus:outline-none focus:ring focus:ring-gray-400 transition duration-200 rounded-lg"
                                            >
                                                <option value={0}>
                                                    -Pillih Jika Sesuai-
                                                </option>
                                                {/* {kondisihamas.map(
                                                    (kond, key) => {
                                                        return (
                                                            <option
                                                                key={key}
                                                                value={kond.id}
                                                            >
                                                                {kond.name}
                                                            </option>
                                                        );
                                                    }
                                                )} */}
                                            </select>
                                        ),
                                    ]),
                            }}
                            columns={[
                                "No",
                                "Kode Gejala",
                                "Gejala",
                                "Pilih Kondisi",
                            ]}
                            className={{
                                container:
                                    "bg-white shadow-md rounded-lg overflow-hidden p-5 overflow-x-auto",
                                table: "mt-5 border-2 border-gray-200",
                                thead: "bg-gray-200",
                                th: "text-left text-sm font-medium text-gray-700 px-4 py-3",
                                tbody: "text-sm",
                                tr: "hover:bg-gray-100 border-b-2 border-gray-200",
                                td: "px-4 py-3",
                                footer: "text-gray-500 text-sm",
                            }}
                        />
                    </div>
                </div>
                <div className="p-4 relative">
                    <div class="fixed bottom-10 right-7">
                        <button
                            type="submit"
                            class="p-0 w-16 h-16 bg-green-600 rounded-full hover:bg-green-700 active:shadow-lg mouse shadow transition ease-in duration-200 focus:outline-none"
                        >
                            <div class="w-4 h-4 inline-block">
                                <FaIcons.FaSearchPlus
                                    size={16}
                                    className="text-white"
                                />
                            </div>
                        </button>
                    </div>
                </div>
            </form>
        </User>
    );
}
