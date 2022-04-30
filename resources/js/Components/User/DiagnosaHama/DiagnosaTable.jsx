import { Grid, _ } from "gridjs-react";
import React from "react";

export default function DiagnosaTable() {
    return (
        <div className="flex flex-col">
            <Grid
                columns={["No", "Kode Gejala", "Gejala", "Pilih Kondisi"]}
                data={[
                    [
                        "01",
                        "G001",
                        "Nandasa Rajal",
                        _(
                            <select
                                name="kondisi"
                                id="kondisi"
                                className="border-2 border-gray-200 focus:border-white focus:outline-none focus:ring focus:ring-gray-400 transition duration-200 rounded-lg"
                            >
                                <option value="">-Pillih Jika Sesuai-</option>
                                <option value="L">Mungkin Ya</option>
                                <option value="L">Mungkin Tidak</option>
                            </select>
                        ),
                    ],
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
    );
}
