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
                        <p class="font-normal text-gray-700 dark:text-gray-400">
                            Here are the biggest enterprise technology
                            acquisitions of 2021 so far, in reverse
                            chronological order.
                        </p>
                    </a>
                </div>
            </div>
        </User>
    );
}
