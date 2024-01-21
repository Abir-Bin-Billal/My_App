import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is app bar"),
        titleSpacing: 10,
        backgroundColor: Colors.green,
        elevation: 0,
        toolbarOpacity: 1,
        toolbarHeight: 60,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("This is a comment!", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackBar('This is a search', context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackBar("this is a email", context);
              },
              icon: Icon(Icons.email)),
          IconButton(
              onPressed: () {
                MySnackBar("This a a bike", context);
              },
              icon: Icon(Icons.pedal_bike_outlined)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar('Something added', context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        elevation: 10,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("This is home button", context);
          }
          if (index == 1) {
            MySnackBar("This is camera", context);
          }
          if (index == 2) {
            MySnackBar("This is your profilee", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  accountName: Text(
                    "Abir bin Billal",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "Abir41300@gmial.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: Image.network(
                      "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgSEhIZGBgYGhgYGBoZGBgYGBgYGBgaGhgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QGhISGjEhJCE0MTQxNDExMTExNDQ0MTQ0NDQ0NDQ0NDQ0MTQxNDQ0MTE0NDExNDQxNDQxNDE0NDQ0NP/AABEIARMAtwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAACAAEDBgcFBAj/xAA9EAACAQIDBQUEBwgDAQEAAAABAgADEQQSIQUxQVFhBiJxgZETMqGxB0JScpLB8BQzYoKiwtHxI7LhU0P/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/EAB4RAQEBAQACAwEBAAAAAAAAAAABAhEDIRIxUUEy/9oADAMBAAIRAxEAPwC9iEIIhiVoQhiCBCEBCOSBqTYDjPJj9pUqIzVHC3vYbybb8qjU+Uq+2+2tPI1OjqzArmc2VdN4KnU+knTixttvDAkftCaaGzA/KHQ2xh3OVa9MtyzgE+AMyDE7UcMKhOVgLZqSolk+yMg1UdSZ5nxrPpmZ/vEt8zJ8l43W88VbalNGy5szcVQF2t91QSJk2G2xWVDTp1HS/DPmT7uVtAOosZz32nXBK52XiVUlLnn3Trvj5HG0JtVDvWovVqVQDzOWw8566NZHGam6sp4qQR6iYM+1XBFi1+ZJa/8AKxtOvsrb70mzqxDcbDIxA9Ue3Jh5iOnGzQZwuz3aNMRZHsHKhgRcK/2gAdVYHepvwIJndmg0UURhCMaImNeAo0RjEwHjRrxoCiivFAZZIsASQQCEqvaDtgtFzRopncaMx0RWsDa2hbfqRoOutu9tPFJTQNUay373UWPDjqV9ZlW28TTLvUpkhXLFQQLgEltynmx8rTOrxczrzYvHPUdqlStmc8BYbtyi/AX0E5GKxTs1i3w+BkdQljvvJKGELaHX8pz+TpMpcI5G/QcbAE6+PGdIWOiEA+RbzFp1aPZlzTDDTy33F7/Kc9uzlZGzr8RvmflHT4X8eCvVNiSVPXLr523Tn1q27SxG4j57p7tr4d0Ocjfoevj1nIerfd6Tcrnqcel8Tf3hfrANYC1jqPKeccxEiE8d2vp+rSsLLsLH2qU2LEf8im44agPa3GxJ6m02TB186K+hJAvbcTzHQ7/OfPz3W1uenprabV2LxYqYOm2a7AZX6MCRr8/OXNSu7GJiMEmbQiY14xMG8ArxrwbxXgFeNGvFeAoo14oBrJBIxDWBU+2qkqwIvdVCX3e8Ln1J+Eo22cLkYIHuSFINtDcAEjpfN6TYMbhUqLldQwF9DxBBUjpoTMm7U4Q0aijMSEGVQd6jKDv5XY2mNRvNcbYmFNarkFzbVra6Xml7F7OoGDMt7c5XfoywHcesw95so8F3/GabhxYDQCebV7ePXicz39SexUCwE5e0aY5TrO/6E5uOHS3jqZKuftUNt7NV1IO48eXIzNNoYR6TlSNAfEEeM2PEm0o236QL2lxo8uJZ1STbfcjyh+3toP8Ac9+JwwAnOZJ3nt47ODZycuu7113maR9GGKINWne4uh0B7pNwdORsAfATN0S/jNB+i6p/zVEO8pc/yMAP+8s+2WnEwSYiYBM6IRMa8YmCTAK8a8G8a8A7xrwLxXgHeKBeKB6BDWAIawJBOJ2i7PJiUKghGJU5rA+6bfIkTtCEJFVHslsx8NRNGoLOjvfkRnJVh0IsfOWii62lH7UYnE0K7sCMjkFDwIsAQSdBY/lPBQ27iaZX2gBViANGUXILC11F9AT4CeXWbNXj241LmdaLWxKrc30la2r2rooSoYEjf/syfF0XfDtUDWuLiVOjsLOVLrvbUte3C9x0vf0mZe/bfPwdbtI1Q/8AGgI3+8JxNqYolu8LE8t3hOzt7Y9nyUnQ0wOPs3ZjodyqCv1t/TWe/DbAL0lzgBlXz6XmrzLPuxUKmHzp5aTgVUKtaW/H0RSJWcHH0xcMOvw/Qm81y8mA7LwWe5IOhF7aBb7iZfvovwWX9oqFfrKitblfMB5gStdnL3dWtkbQ9NDvPSxmndmqYXC0bC2amrt1ZxmZj4kzWL3VY8mZnM46RMBjCYyJjOzgYmMTGJgkwCvFeBeNeAd4rwLx7wDvFAvFA9ghrAWEIBiGIAhiB4ttYJKtPI6g2YEXF7Hdces452ZnYM6oSqhAct2yjTj04yxYhCUYDfa48RqPlPFSrgrfmJ5vN2aerwcubPyo8TZaBXhu9J5dm5W0tItuVQtIC41nIwe0fZZCTcswUAdTYTjx6ueltfZ6AXsoPOwnN2pjEpIVB8Z6q+NOXlz6SkdpsYToJfu8jMnJ2q/tXE53J4Tm1huv1+Np62pcZBXS4PT8p1jhr3e12NlYewCsQDVIB8XYKq+Govz1msogRVRdygKPBRYfKYpg8U1TFYcE2UVKeg4Xddfn6zbGM6+Oc7XLza7ZJ/EbGRMYbSNjOjiEmCTEYDGARMa8AtFmgHeODIw0K8A7xQLxQOiI4grCEAxDEjEMQDE4uPolH09x9fBvrD8/XlOyDIMfQzoV4jvL4j9Eec5+TPyy6+Lfx11UdubINbRKhUAenhygYDYSUirsSzLquZibHnYnfPT7SuG7gQg/aJBO7dpaeTGUsSQWqVUpryHfa3wA9Z5p9Pfz+uzVxKsmmvCU/bVG5vOlsygFBc1XblfKB+ECeHaji0z/AEs9OKU0nMrPYN4EeotPfiqtlPWcSq5Ok7R59179m45KD0q9Rcyo6Egb7Bt46jfbja02bCYynWQVKVQOjbmXd1B5EcQdRMExz9wLzI+E6XZLtM+Dqk6tScj2ic+GdL7mHxGh4Eds308u/wDTa2kbGBhsUlVFqU3DI4urDiPyPThHYzbIGMBjHYyImA5Ma8EmNeAYMINIrxwYEwaNABigdUQhBWEIBiGIAnk2rtSlhkNWvUyJew0JLMdyqo1J0PoYHQEcTLtq/SZUJK4SiqLwepdmI55AQF8yZU8f2hxdf97iahH2Q2RNf4EsD5iTqtb2nhAKmXNYPdl1sR9q3HefjPKmwEJzO7N0NyPiZkWDxb0nWrTazqd/McQ3MGXVO3iZO+jqeW8X6EcPKefeLL2PX4vNLnmrxY8fTRAbNe3pKptTHoBlEhrbXfELnQ925XqCOBHmJx6lM3N9TxM55z79umt+vSLEVSxuZ5wLancIb3vOfjMRfug6Df1naRw1rntDiKuZr+nhIxGEICbea3qwdmO09XCNYd+kxu6H4sh+q3wPHmNO2T2kw2J0pPZ//m4yv5Dc38pMxRRDRiLEGx0IO4g8CJqUbwzSMtM52P23qIAmIBqKNAwsHHiTo/nY9Zb9ndoMNX0p1BmP1G7r+QPveV5ejrExryMtBzSiW8IGQ5o4MCUGKCGigdpYYgLDEA1mO/SJtY18W1MNdKF0UcM4/eN45u7/ACTUNvbR/ZsNUr6XRTkubAu3dQfiImDMxJLMSSTck6kk6kk8yTJVNFFHEiGkdc6W4yeebEJqG5i3+IHV7KY3LUNJvdqWt0Ybj57vSWfFYdN+o53mfUjlZSNLGd3afaVnTIi2utmc7zprl5ePynLWbb6ejHkmc8rz7UxABKIfvH8hOSxh5ryKpNyccNaur0VMSS0SLpDAmkNaHl0jEQ13DwgCF5wtOUQERgdzZXaivRsrN7RPsuTmH3X3jzuJc9lbfo4juo2V/sNo3lwbymYWkT1ADcXuNQQSCCNxBG4x0bSGhBpV+yvaH9oX2dTSoigk8HUaZhyO646+liDTQ9AaKRBooFiWSCRLJFgZ99Ku0tKWFB4+1fXhqiAjzc+QmcyxdvMVnx1YjcmSn45EGb+osPKVwzNDiOIwiEA4FQXUgx7xn90+EDyICbHxhlLb5ImiDwkQ1MAL6xMNRCQX15mTZIDKIRjgRQAC33n8pKYK7/nDtAYRR2Mhd+EAXYnQboOQcTDCk74m03QPd2drZMTSa9rtlPg4K29SJqAeZJs4E1qYHGon/cTVg8sHpV4pArxSi2iKtXVEao3uorO1t9lBJt5CITybcxQpYatUJtlpuRx72UhRbjdiB5wMNxGINR3qtvd3dvF2LH4mQR8tgAIAbXdMg1jwYUBCJtxivEYHmRroB5RE2UkSOnut1MOvwXnAlppuHISSPujQFGY2EeANW6D5wJEWO72jnQTzo1yWO4bupgGbxlUCODePaAxMicyRjIXMD2bCF8RS++D6a/lNIV5n3ZinfEKfshm+GX+6XdXlg96vFPMrxSi9iUv6TtpZKKYVRrVOdjySmykDxLEfhMuazKPpCxmfGMl9KSInmR7Rj/WB5SCquJEwPX4SZpGwkBdY4MBOXKEsBzETETBvAhpj5n5xP76x4wHf8oHoMUTR4UDtbdv3Dxh0ksLfoyJdTfloPHiZK7WEIgxVT6o4xPYBV3W1P685Axu0ntd/AQJFBtc6ch/mIwmMEmADSF5I7/rfImb9GBYOyiau/RVHmST8hLKryv8AZsWplvtOfQAD5gzsK8sHuV4p51eKUaUswrauK9rWq1r3Du7L90scn9Npse3sUaeGr1BvWm5X72U5fjaYiosLSUMTBMdoJkEeazeOkmE8lYz0I2g8oBmDHvBvAZFuxH/v+hBX3gehjcTHX3r9IExOsTH46Qbxs2vgPnAe1tBAcx2MjaBCN/nPZS3sbecsnZjsuroMTiTZPeVN2YD6zH7J5cROXteoGqu6U8tNmOSy5VKroCuljuv5zMst43cWZ7f68TGATHZrb4B1mmEVRjyPpIwnP0kziRolyAOJA9dIFq2UmWkg6X/ESfznuVpCugty0hAzQ9CtHkKmKBcu3lXLgatvrGmv4qiX+F5kZM036SsRlwyU+L1V9EVmJ9QvrMuLE8LeMlDmC0TC3GRsW/Wkg6fZ/YzYmplvZF1ZunBR1P5S64nstSyhFQbtCL5h5/lJOwmzymHDkXaoc/kQAvwHxk/aXtGuGHs6ah6xFxe+VBuDMBv42HT182ta1rkezOc5z3UVLa3Zg0ELvXRR9VWBDN0W2pPgJWi89WLrvVYvUcu53lj8ANyjoNJGqCejMsnuvLqy31OPOd8St3p6GpCQtTym5lZODHTievygK0JdFEBnadTsvsk4nEKpUlF71S17ZRuW/DMdPC/KchjNR7BYVqeGUqAWqkuSdwB7q/0gG3WY3rkdfFn5adzE4dBlFQKFA0X6oA0AtulM7e4rRKfsyq3zq1t9haw9ZcsZXSld6ziwF7mw9BM47Uba/aagKiyJcLzJO89BOPjndPT5bJmuDaNeETI3M9Lwo3aejZVPNVXp3j5a/O08jGdfYVP3n8FHzP5SQdq8IGRiEJsSKY8FYoFm+krCBsMtXjTdfwv3CPXIfKZkW0mw9sqOfA4gckz/AIGD/wBsx2SgVW3jzjkX3woxkFs7M9rv2dFo1UzItwrL7yg8COI8NZwdsY722Iq1ODOxX7gNk/pCznwHHKZmZL2NXerOVKx4QgZEN8O80hO2+RVgWyrz/L/cJzp5iI+8PMev+oQmoDhBdDJw0e8BtkYA16yURpmPeP2VGrEdbbutprmzxkUImiqAo/hUaKPITILkMCpK5e9caG43WMsOH7Y4hEysqNm0BsQwPM2Nj4WE5bzdfTt4t5z9rH212hTSiaAIao9r8SADe55dJnrmI1ixLOSWJ7xJuSeesEzec/GcZ8m/lemMiqNDczzuZpzMJZ8DRyIq8bXPidT/AInD2bQzuoO4anwHD5SzWiBhDURgIQE0HEUcCPA0+rSDo1NtzqynwYWPzmE4jDtTdqT+8jFG8VNj5aTeFlZ7TdjUxTmtTf2dUgBiRdHsLAsBqDYAZh6GSjKhEZ7ts7Gq4VgldLEjMrKcysL2uDvGvMCc01BzkBERrQfajqY+cfoQC3x5G3Mai1z8oSVAYCcaRb9YREBf1/iAYjwBCvAUFuHTX4f+woxgCeYizSMtoD0EZz1gM7QBFGY2gdTYf7z+VvylhtK72e/eW/hb5iWULLAIEICEFhWlA2ihWigaYphiRqYqtZUVndgqqCzE6AKBckwKN9KJW1A5hn74y8chynORyBW3nM3KngZ0drYxq9Z6rsWLsbEi1kBOVQvABbaTxZZkAHPGEH8I+WRMATZd4gShm3iRFCIXszwMdbwGSqRvh5gdREVvIavdgT7/ANfOISBKkkz+RgSAxGBmjloEI923LSDfSG5+MCA0jJvHdowhHQ2LUy1k6nL+IWHxtLjllBpuQQRvBuPEbpfqThlVxuYBh5i8sWFaKOY1pQrRR4oGjLKF9Iu3dRg6bbrPVt6onyY/y9Zdcbi1pU3rP7qIznrlF7ee6Ybia7VXao5uzsWY9WNzbpy6SUOHjX4mC1l4zzsxc2EgT1b3C8TJKaEDSBTWxB4fKei/D06wgc7DhJOFyLA6AncSLXsd3EeojAyehXC2DIrqDmsbjXmGUjlxuOkK89hrx5eN5BXTS9/lf0veWB6mGqgAu1FrfXTOnm9MZh+CeHGYREyp7RHYlmzo+ZMllCjUCxuXuCARYc4HLCR7SaumU77jnBMIjzQhUjEQSsB3cQHa8crGtAG0QhWitAQlx2DUzUF/hJX0OnwIlOEs3Zd+468mDfiFv7Yix240RimghFEI8Dvdv2IwTWO96YPUZxp8JlZ92KKSjx1J6qO6KKRITfW8I6bhFFCnWKKKENFFFChPGMIooCgGKKA0aKKENEYooCnf7Lf/AKeCf3R4oiu+YoopoIR4ooH/2Q=="),
                )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                MySnackBar("On the way to Home!", context);
              },
            ),
            ListTile(
              title: const Text("Contact"),
              leading: const Icon(Icons.contact_mail),
              onTap: () {
                MySnackBar("this is contact", context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () {
                MySnackBar("This is a profilee", context);
              },
            ),
            ListTile(
              title: Text("Help"),
              leading: Icon(Icons.help),
              onTap: () {
                MySnackBar("I can help you", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
