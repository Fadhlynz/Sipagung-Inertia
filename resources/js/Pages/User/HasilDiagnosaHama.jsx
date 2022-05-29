import React from "react";
import "flowbite";
import { Inertia } from "@inertiajs/inertia";
import { Grid, _ } from "gridjs-react";
import User from "../../Layouts/User";

export default function HasilDiagnosaHama(props) {
    return (
        <User judul="Hasil Diagnosa Hama">
            <div className="pt-[50px] px-[200px] justify-items-center grid grid-cols-1">
                <div className="flex flex-col">
                    <nav
                        class="h-fit flex py-3 px-5 text-gray-700 bg-gray-50 rounded-lg border border-gray-200 dark:bg-gray-800 dark:border-gray-700"
                        aria-label="Breadcrumb"
                    >
                        <ol class="inline-flex items-center space-x-1 md:space-x-3">
                            <li class="inline-flex items-center">
                                <a
                                    href="#"
                                    class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white"
                                >
                                    <svg
                                        class="mr-2 w-4 h-4"
                                        fill="currentColor"
                                        viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg"
                                    >
                                        <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"></path>
                                    </svg>
                                    Home
                                </a>
                            </li>
                            <li>
                                <div class="flex items-center">
                                    <svg
                                        class="w-6 h-6 text-gray-400"
                                        fill="currentColor"
                                        viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg"
                                    >
                                        <path
                                            fill-rule="evenodd"
                                            d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                                            clip-rule="evenodd"
                                        ></path>
                                    </svg>
                                    <a
                                        href="#"
                                        class="ml-1 text-sm font-medium text-gray-700 hover:text-gray-900 md:ml-2 dark:text-gray-400 dark:hover:text-white"
                                    >
                                        Templates
                                    </a>
                                </div>
                            </li>
                            <li aria-current="page">
                                <div class="flex items-center">
                                    <svg
                                        class="w-6 h-6 text-gray-400"
                                        fill="currentColor"
                                        viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg"
                                    >
                                        <path
                                            fill-rule="evenodd"
                                            d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                                            clip-rule="evenodd"
                                        ></path>
                                    </svg>
                                    <span class="ml-1 text-sm font-medium text-gray-400 md:ml-2 dark:text-gray-500">
                                        Flowbite
                                    </span>
                                </div>
                            </li>
                        </ol>
                    </nav>
                    <h1>Hasil Diagnosa Hama</h1>
                    <Grid
                        data={[
                            ["John", "john@example.com", "(353) 01 222 3333"],
                            ["Mark", "mark@gmail.com", "(01) 22 888 4444"],
                        ]}
                        columns={["Name", "Email", "Phone Number"]}
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
                    <div className="pt-4">
                        <a
                            href="#"
                            class="block p-6 bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700"
                        >
                            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                Hasil Diagnosa
                            </h5>
                            <p class="font-normal text-gray-700 dark:text-gray-400">
                                Here are the biggest enterprise technology
                                acquisitions of 2021 so far, in reverse
                                chronological order.
                            </p>
                        </a>
                    </div>
                    <div className="pt-4">
                        <a
                            href="#"
                            class="block p-6 bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700"
                        >
                            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                Detail
                            </h5>
                            <p class="font-normal text-gray-700 dark:text-gray-400">
                                Here are the biggest enterprise technology
                                acquisitions of 2021 so far, in reverse
                                chronological order.
                            </p>
                        </a>
                    </div>
                    <div className="pt-4">
                        <a
                            href="#"
                            class="block p-6 bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700"
                        >
                            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                Saran
                            </h5>
                            <p class="font-normal text-gray-700 dark:text-gray-400">
                                Here are the biggest enterprise technology
                                acquisitions of 2021 so far, in reverse
                                chronological order.
                            </p>
                        </a>
                    </div>
                    <div className="pt-4">
                        <a
                            href="#"
                            class="block p-6 bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700"
                        >
                            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                Kemungkinan lain
                            </h5>
                            <p class="font-normal text-gray-700 dark:text-gray-400">
                                Here are the biggest enterprise technology
                                acquisitions of 2021 so far, in reverse
                                chronological order.
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        </User>
    );
}
