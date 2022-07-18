import React from "react";
import "flowbite";
import User from "../Layouts/User";

export default function About() {
    return (
        <User judul="About" user="Fadli">
            <div className="container">
                <div className="w-screen pt-7 px-6">
                    <a
                        href="#"
                        class="block p-6 max-w-5xl mx-auto bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700"
                    >
                        <h5 class="mb-2 text-2xl font-bold text-center tracking-tight text-gray-900 dark:text-white">
                            SIPAGUNG
                        </h5>
                        <div className="flex flex-auto space-x-4 justify-center text-lg mb-5">
                            <a href="">Fadli Nur Zaman</a>
                            <a href="">Fadli Nur Zaman</a>
                            <a href="">Fadli Nur Zaman</a>
                        </div>
                        <p className="font-semibold text-center text-slate-700">
                            Sistem Pakar, Diagnosa Hama dan Penyakit pada
                            Tanaman Jagung
                        </p>
                        <p class="font-normal text-center text-gray-700 dark:text-gray-400">
                            Copyright © 2022, Universitas Tadulako Palu
                        </p>
                        <div></div>
                    </a>
                </div>
            </div>
        </User>
    );
}
