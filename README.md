[![Tag](https://img.shields.io/github/v/tag/4f77616973/ThinkPad-E14-fingerprint?label=Version&style=flat-square)](https://github.com/4f77616973/ThinkPad-E14-fingerprint/tags)
[![License](https://img.shields.io/badge/License-LGPLv2.1-purple?style=flat-square)](LICENSE)
[![Open Source](https://img.shields.io/badge/Open%20Source-Yes-blue?style=flat-square)](https://opensource.org/)
[![Maintenance](https://img.shields.io/badge/Maintained-Yes-success.svg?style=flat-square)](https://github.com/4f77616973/ThinkPad-E14-fingerprint/graphs/contributors)

# Linux Fingerprint Drivers for ThinkPad E14
<img src = "logo.png" alt = "fingerprint icon" width = "75dp">

An attempt to port the Synaptics fingerprint driver to Linux for ThinkPad E14, E14 Gen 2, E15 and E15 Gen 2. Tested on Arch Linux with the latest LTS kernel.

## Devices targeted
- E14 (20RAxxxxxx, 20RBxxxxxx)
- E14 Gen 2 (20T6xxxxxx, 20T7xxxxxx, 20TAxxxxxx, 20TBxxxxxx)
- E15 (20RExxxxxx, 20RDxxxxxx)
- E15 Gen 2 (20T8xxxxxx, 20T9xxxxxx, 20TDxxxxxx, 20TExxxxxx)

## Discussions

libfrprint issue: [https://gitlab.freedesktop.org/libfprint/libfprint/issues/54](https://gitlab.freedesktop.org/libfprint/libfprint/issues/54)

Lenovo forums: [https://forums.lenovo.com/t5/Linux-Discussion/Validity-Fingerprint-Reader-Linux/td-p/3352145](https://forums.lenovo.com/t5/Linux-Discussion/Validity-Fingerprint-Reader-Linux/td-p/3352145)

## Notable files

1. [spec.md](spec.md) - Specification draft, the main work goes here right now.
2. [dissector.lua](dissector.lua) - Wireshark dissector for decrypting communication after key exchange.
3. ~[libfprint directory](libfprint) - libfprint repo with this driver integrated~ Not ready at the moment.
4. [prototype](prototype) - Standalone prototype(extremly ugly code, would be completly rewritten for driver)

## Testing

[Prototype](prototype) testers are needed.

## Status

|   Device  | Status |
|-----------|--------|
| 06cb:00da | Work in progress |

| 		      Task       			| Specification/Analysis  | Prototype   | Driver 	    |
|---------------------------|-------------------------|-------------|-------------|
| Initialization  		      | Done 					          | Not Started	 	    | Not Started |
| Configuration/Reconfig    | In progress 	          | Not Started | Not Started |
| Pre TLS key exchange 	    | In progress 				    | Not Started        | Not Started |
| TLS 			                | In progress 						        | Not Started  	    | Not Started |
| 90: Ops: scan, LED, etc| In progress  			      | Not Started  | Not Started |
| 97: Ops: enroll, check, reset, LED, etc| In progress  			      | Not Started  | Not Started |
| Image format  		        | In progress  			      | Not Started        | Not Started |

## Credits
Driver source files courtesy of [nmikhailov / Validity90](https://github.com/nmikhailov/Validity90) and [the Linux community](https://www.linux.org/).

Synaptics is a trademark of [Synaptics Incorporated](https://www.synaptics.com/).

## License
This project is licensed under the GNU Lesser GPL v2.1. [Click here](LICENSE) for license.
