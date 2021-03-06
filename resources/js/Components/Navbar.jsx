import { Link } from "@inertiajs/inertia-react";
import { Menu, Transition } from "@headlessui/react";
import { Fragment, useEffect, useRef, useState } from "react";

function EditInactiveIcon(props) {
    return (
        <svg
            {...props}
            // viewBox="0 0 20 20"
            // fill="none"
            // xmlns="http://www.w3.org/2000/svg"
        >
            <path
            // d="M4 13V16H7L16 7L13 4L4 13Z"
            // fill="#EDE9FE"
            // stroke="#A78BFA"
            // strokeWidth="2"
            />
        </svg>
    );
}

function EditActiveIcon(props) {
    return (
        <svg
            {...props}
            // viewBox="0 0 20 20"
            // fill="none"
            // xmlns="http://www.w3.org/2000/svg"
        >
            <path
            // d="M4 13V16H7L16 7L13 4L4 13Z"
            // fill="#8B5CF6"
            // stroke="#C4B5FD"
            // strokeWidth="2"
            />
        </svg>
    );
}

function DuplicateInactiveIcon(props) {
    return (
        <svg
            {...props}
            // viewBox="0 0 20 20"
            // fill="none"
            // xmlns="http://www.w3.org/2000/svg"
        >
            <path
            // d="M4 4H12V12H4V4Z"
            // fill="#EDE9FE"
            // stroke="#A78BFA"
            // strokeWidth="2"
            />
            <path
            // d="M8 8H16V16H8V8Z"
            // fill="#EDE9FE"
            // stroke="#A78BFA"
            // strokeWidth="2"
            />
        </svg>
    );
}

function DuplicateActiveIcon(props) {
    return (
        <svg
            {...props}
            // viewBox="0 0 20 20"
            // fill="none"
            // xmlns="http://www.w3.org/2000/svg"
        >
            <path
            // d="M4 4H12V12H4V4Z"
            // fill="#8B5CF6"
            // stroke="#C4B5FD"
            // strokeWidth="2"
            />
            <path
            // d="M8 8H16V16H8V8Z"
            // fill="#8B5CF6"
            // stroke="#C4B5FD"
            // strokeWidth="2"
            />
        </svg>
    );
}

export default function Navbar(props) {
    return (
        <div className="bg-white w-full h-fit flex flex-col sm:flex-row justify-between items-center py-5 px-20 fixed top-0 z-20">
            <Link href="/">
                <h1 className="text-2xl text-green-500 font-bold">SIPAGUNG</h1>
            </Link>
            <div className="flex space-x-4 py-2">
                <div className="justify-center rounded-md px-4 py-2 text-sm font-medium text-green-500 hover:bg-opacity-30 focus:outline-none ">
                    <Link href="/">Home</Link>
                </div>
                <Menu as="div" className="relative inline-block text-left">
                    <div>
                        <Menu.Button className="inline-flex w-full justify-center rounded-md px-4 py-2 text-sm font-medium text-green-500 hover:bg-opacity-30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75">
                            Diagnosa
                        </Menu.Button>
                    </div>
                    <Transition
                        as={Fragment}
                        enter="transition ease-out duration-100"
                        enterFrom="transform opacity-0 scale-95"
                        enterTo="transform opacity-100 scale-100"
                        leave="transition ease-in duration-75"
                        leaveFrom="transform opacity-100 scale-100"
                        leaveTo="transform opacity-0 scale-95"
                    >
                        <Menu.Items className="absolute right-0 mt-2 w-56 origin-top-right divide-y divide-gray-100 rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">
                            <div className="px-1 py-1 ">
                                <Menu.Item>
                                    {({ active }) => (
                                        <Link href="diagnosa-hama">
                                            <button
                                                className={`${
                                                    active
                                                        ? "bg-green-600 text-white"
                                                        : "text-green-600"
                                                } group flex w-full items-center rounded-md px-2 py-2 text-sm`}
                                            >
                                                {active ? (
                                                    <EditActiveIcon
                                                        className="mr-2 h-5 w-5"
                                                        aria-hidden="true"
                                                    />
                                                ) : (
                                                    <EditInactiveIcon
                                                        className="mr-2 h-5 w-5"
                                                        aria-hidden="true"
                                                    />
                                                )}
                                                Diagnosa Hama
                                            </button>
                                        </Link>
                                    )}
                                </Menu.Item>
                                <Menu.Item>
                                    {({ active }) => (
                                        <Link href="diagnosa-penyakit">
                                            <button
                                                className={`${
                                                    active
                                                        ? "bg-green-600 text-white"
                                                        : "text-green-600"
                                                } group flex w-full items-center rounded-md px-2 py-2 text-sm`}
                                            >
                                                {active ? (
                                                    <DuplicateActiveIcon
                                                        className="mr-2 h-5 w-5"
                                                        aria-hidden="true"
                                                    />
                                                ) : (
                                                    <DuplicateInactiveIcon
                                                        className="mr-2 h-5 w-5"
                                                        aria-hidden="true"
                                                    />
                                                )}
                                                Diagnosa Penyakit
                                            </button>
                                        </Link>
                                    )}
                                </Menu.Item>
                            </div>
                        </Menu.Items>
                    </Transition>
                </Menu>
                <Menu as="div" className="relative inline-block text-left">
                    <div>
                        <Menu.Button className="inline-flex w-full justify-center rounded-md px-4 py-2 text-sm font-medium text-green-500 hover:bg-opacity-30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75">
                            Riwayat
                        </Menu.Button>
                    </div>
                    <Transition
                        as={Fragment}
                        enter="transition ease-out duration-100"
                        enterFrom="transform opacity-0 scale-95"
                        enterTo="transform opacity-100 scale-100"
                        leave="transition ease-in duration-75"
                        leaveFrom="transform opacity-100 scale-100"
                        leaveTo="transform opacity-0 scale-95"
                    >
                        <Menu.Items className="absolute right-0 mt-2 w-56 origin-top-right divide-y divide-gray-100 rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">
                            <div className="px-1 py-1 ">
                                <Menu.Item>
                                    {({ active }) => (
                                        <Link href="riwayat-hama">
                                            <button
                                                className={`${
                                                    active
                                                        ? "bg-green-600 text-white"
                                                        : "text-green-600"
                                                } group flex w-full items-center rounded-md px-2 py-2 text-sm`}
                                            >
                                                {active ? (
                                                    <EditActiveIcon
                                                        className="mr-2 h-5 w-5"
                                                        aria-hidden="true"
                                                    />
                                                ) : (
                                                    <EditInactiveIcon
                                                        className="mr-2 h-5 w-5"
                                                        aria-hidden="true"
                                                    />
                                                )}
                                                Riwayat Hama
                                            </button>
                                        </Link>
                                    )}
                                </Menu.Item>
                                <Menu.Item>
                                    {({ active }) => (
                                        <Link href="riwayat-penyakit">
                                            <button
                                                className={`${
                                                    active
                                                        ? "bg-green-600 text-white"
                                                        : "text-green-600"
                                                } group flex w-full items-center rounded-md px-2 py-2 text-sm`}
                                            >
                                                {active ? (
                                                    <DuplicateActiveIcon
                                                        className="mr-2 h-5 w-5"
                                                        aria-hidden="true"
                                                    />
                                                ) : (
                                                    <DuplicateInactiveIcon
                                                        className="mr-2 h-5 w-5"
                                                        aria-hidden="true"
                                                    />
                                                )}
                                                Riwayat Penyakit
                                            </button>
                                        </Link>
                                    )}
                                </Menu.Item>
                            </div>
                        </Menu.Items>
                    </Transition>
                </Menu>
                <div className="justify-center rounded-md px-4 py-2 text-sm font-medium text-green-500 hover:bg-opacity-30 focus:outline-none">
                    <Link href="/keterangan">Keterangan</Link>
                </div>
                <div className="justify-center rounded-md px-4 py-2 text-sm font-medium text-green-500 hover:bg-opacity-30 focus:outline-none">
                    <Link href="/about">Tentang</Link>
                </div>
                <div className="justify-center rounded-md bg-green-500 bg-opacity-75 px-4 py-2 text-sm font-medium text-white hover:bg-opacity-30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75">
                    <Link href="/login">Login</Link>
                </div>
            </div>
        </div>
    );
}
