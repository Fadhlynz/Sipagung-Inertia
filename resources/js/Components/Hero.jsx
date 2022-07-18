import React from "react";
import { Link } from "@inertiajs/inertia-react";

export default function Hero() {
    return (
        <div className="bg-white">
            <div className="h-fit pt-2 px-20 grid grid-cols-1 sm:grid-cols-2">
                <div className="flex flex-col items-center sm:items-start justify-center space-y-5 row-start-2 sm:row-start-1">
                    <h1 className=" mt-5 sm:mt-0 text-3xl sm:text-5xl text-center sm:text-left font-bold text-gray-800">
                        Sistem Pakar Diagnosis Hama dan Penyakit Tanaman Jagung
                    </h1>
                    <p className="leading-8 text-center sm:text-left">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Minima magnam facere quos distinctio. Voluptate eos,
                        reprehenderit quam iste cum illo modi eveniet,
                        praesentium error, debitis quidem sunt neque. Aperiam,
                        ipsa?
                    </p>
                    <button className="bg-green-500 text-white font-bold text-xl px-5 py-2 rounded-lg transform hover:-translate-y-2 hover:shadow-xl transition-all duration-300">
                        <Link href="/diagnosa-penyakit">
                            Diagnosa Penyakit Sekarang
                        </Link>
                    </button>
                </div>
                <div className="w-full flex items-center rounded-full row-start-1 sm:col-start-2">
                    <img src="/img/farmer.svg" alt="" />
                </div>
            </div>
        </div>
    );
}
