import React, { useState } from "react";
import Admin from "../../Layouts/Admin";
import Hama from "./Hama";
import GejalaHama from "./GejalaHama";
import BasisHama from "./BasisHama";

export default function MasterHama() {
    const [tab, setTab] = useState("hama");

    return (
        <Admin judul="Master Hama">
            <div className="p-4 space-y-3">
                <div className="flex space-x-3">
                    <div
                        className={`px-4 py-2 cursor-pointer rounded-xl ${
                            tab == "hama"
                                ? "bg-blue-500 text-white"
                                : "bg-gray-100 text-blue-500 border-blue-500"
                        } font-semibold`}
                        onClick={() => {
                            setTab("hama");
                        }}
                    >
                        Data Hama
                    </div>
                    <div
                        className={`px-4 py-2 cursor-pointer rounded-xl ${
                            tab == "gejalahama"
                                ? "bg-blue-500 text-white"
                                : "bg-gray-100 text-blue-500 border-blue-500"
                        } font-semibold`}
                        onClick={() => {
                            setTab("gejalahama");
                        }}
                    >
                        Gejala Hama
                    </div>
                    <div
                        className={`px-4 py-2 cursor-pointer rounded-xl ${
                            tab == "basishama"
                                ? "bg-blue-500 text-white"
                                : "bg-gray-100 text-blue-500 border-blue-500"
                        } font-semibold`}
                        onClick={() => {
                            setTab("basishama");
                        }}
                    >
                        Basis Hama
                    </div>
                </div>
                {tab == "hama" && <Hama />}
                {tab == "gejalahama" && <GejalaHama />}
                {tab == "basishama" && <BasisHama />}
            </div>
        </Admin>
    );
}
