import React from "react";
import "flowbite";
import { Inertia } from "@inertiajs/inertia";
import { Grid, _ } from "gridjs-react";
import User from "../../Layouts/User";

export default function RiwayatPenyakit(props) {
    return (
        <User judul="Riwayat Diagnosa Penyakit">
            <div className="p-10 grid grid-cols-1 sm:grid-cols-2 gap-2">
                <div className="flex flex-col">
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
                </div>
                <div className="h-full pt-2 px-4">
                    <a
                        href="#"
                        class="block px-4 p-6 max-w-sm bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700"
                    >
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                            Noteworthy technology acquisitions 2021
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
