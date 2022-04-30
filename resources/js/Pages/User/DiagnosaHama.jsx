import React from "react";
import User from "../../Layouts/User";
import DiagnosaTable from "../../Components/User/DiagnosaHama/DiagnosaTable";
import FloatButton from "../../Components/User/FloatActionButton";
import * as BsIcons from "react-icons/bs";

export default function DiagnosaHama() {
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
            <div className="p-4 space-y-3">
                <DiagnosaTable />
            </div>
            <div className="p-4 relative">
                <FloatButton />
            </div>
        </User>
    );
}
