import React from "react";
import "flowbite";
import { Inertia } from "@inertiajs/inertia";
import { Grid, _ } from "gridjs-react";
import User from "../../Layouts/User";

export default function RiwayatHama(props) {
    return (
        <User judul="Riwayat Diagnosa Hama">
            <div className="pt-10  grid grid-cols-1 md:grid-cols-2 gap-2">
                <div className="w-full px-6 mx-auto">
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
                <div className="px-6 mx-auto">
                    <div className="max-w-xl px-6 bg-slate-500 rounded-lg shadow-lg mb-5">
                        <div class="font-bold text-xl mb-2 text-slate-700">
                            Image Title
                        </div>
                        <p class="text-sm text-slate-600">
                            Lorem ipsum dolor sit, amet consectetur adipisicing
                            elit. Dolor quam, quo unde qui ullam quae expedita
                            modi doloremque exercitationem laborum enim nisi
                            dolore aut nemo voluptatum. Iste animi ea eos.
                        </p>
                    </div>
                </div>

                {/* <div className="flex flex-col">
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
                <div class="rounded-md shadow-lg overflow-hidden mb-10 bg-white sm:mb-0 sm:w-64 md:w-80 lg:w-72">
                    <div class="px-6 py-4">
                        <div class="font-bold text-xl mb-2 text-slate-700">
                            Image Title
                        </div>
                        <p class="text-sm text-slate-600">
                            Lorem ipsum dolor sit amet consectetur adipisicing
                            elit. Error, distinctio.
                        </p>
                    </div>
                </div> */}
            </div>
        </User>
    );
}
