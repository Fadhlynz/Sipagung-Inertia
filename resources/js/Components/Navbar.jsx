import { Link } from "@inertiajs/inertia-react";
import React from "react";

export default function Navbar(props) {
    return (
        <div className="bg-white w-full h-fit flex flex-col sm:flex-row justify-between items-center py-5 px-20 fixed top-0 z-20">
            <Link href="/">
                <h1 className="text-2xl text-green-500 font-bold">SIPAGUNG</h1>
            </Link>
            <div className="space-x-10 py-2">
                <Link href="/">
                    <button
                        className={`${
                            props.title == "Home"
                                ? "text-green-400"
                                : "text-gray-800"
                        } hover:text-green-400 transition-all duration-300`}
                    >
                        Home
                    </button>
                </Link>
                <Link href="/beranda">
                    <button
                        className={`${
                            props.title == "Diagnosa"
                                ? "text-green-400"
                                : "text-gray-800"
                        } hover:text-green-400 transition-all duration-300`}
                    >
                        Diagnosa
                    </button>
                </Link>
                <Link href="/about">
                    <button
                        className={`${
                            props.title == "About"
                                ? "text-green-400"
                                : "text-gray-800"
                        } hover:text-green-400 transition-all duration-300`}
                    >
                        About
                    </button>
                </Link>
                <Link href="/login">
                    <button
                        className={`${
                            props.title == "Login"
                                ? "text-green-500"
                                : "text-white"
                        } hover:text-green-500 hover:bg-white border border-green-500 transition-all duration-300 bg-green-500 px-5 py-2 rounded-lg`}
                    >
                        Login
                    </button>
                </Link>
            </div>
        </div>
    );
}
