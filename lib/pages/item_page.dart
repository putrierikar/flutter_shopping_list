import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/models/item.dart';
import 'package:flutter_shopping_list/widgets/ratingbar.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({ Key? key }) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Hero(
            tag: itemArgs.name, 
            child: Material(
              elevation: 15,
              shadowColor: Colors.black,
              //child: Image.network('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFRUYGRgYGhgcGhkZGhkcHBoZGRoaHBocGBocIS4lHB4rIRwaJjgmKy8xNTU1HCQ7QD00Py40NTEBDAwMEA8QHxISHzcmJCs6NDY0NDQ0PTQ2NTUxPzQ0NDQxNDQ0NDc0NDQ0NDQ2NDE0NjQ0MTYxND00NDQ0NDQ0NP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABQECAwQGBwj/xABGEAABAwIDBAcEBgkBCAMAAAABAAIRAyEEEjEFQVFhBhMicYGRoQcyUrEUQpLB0fAWIzRicoKisuEzFSRUY3PC0vEXRFP/xAAZAQEAAwEBAAAAAAAAAAAAAAAAAQIEAwX/xAAoEQACAgEDBAEEAwEAAAAAAAAAAQIRAxIxQQQTIVFhIjJxoQUVgbH/2gAMAwEAAhEDEQA/APZkREAREQBERAURYX4ljTBe0HgXAHyV1Oq03a4O7iD8kBlRUlEBVFRVQBERAERUQFUVJSUBVFSVYKrfiHmEBkRa/wBLZMZ2TwzNn5rM1wOiAuREQBERAEREAREQBERAEREAVCqqhQHifTrETjawzGJaLHeGtEHyXKVnPYS5j3tO8BxB8xEqd6W12fS672HNL3XbpM6zvXM1K73mBfwn1WS25Mz82SWD29XZBGIqg/8AUf8AipSn06xjbDEOjmGO9XNJUJR2c8gS0E90nylUZs6ZzHKQdI5H74EJTsWiePT7G/8AEO+zT/8AFUp9P8a3TEOPe2mfm1RTdksPZDnEkw2w1JaAD/V/TzWf9HSXABrrFwcDlB7IBMcDB0v4qG9O7/ZKkb9T2hY0/wD2CO5jB/2q13tMxzm5esYP3gxod5m0+C0aew2NLc4eZtlBaBmtaRcCCPNZGbCpSP1LjBYXAvnsh2Rw/md5RwRSXv8AY1fkuf03xbrnE1PB2X0bAVj+mWKOuJq/bI+SznY9MODDQ7ROUdr62TeNJlzXbuCvZs2nr9GbAABlwvmcGgmd8tdpa/DVa9/sjV+SNPSSubHEVIne99udjKP6T4g2+k1SB/zH/ipJ+ApBpccM0RlkiNZeNDpJLbbsnliNLDW/U77wTcHIDvto6Nbu5IknsyNSMWH6UVgxzOuf2gRdxJvzN1CEue6BvKkn7OZuBWE7OcDLKhae4fMK1uqCaNvD7MyMJI7R3kadwXunRvDdXhaDIEimyY0Li0Fx8TJXgrH12akPHqvVfZt0g66n9HeDmptlpO9kgRPFpIHcRwVsUqdMtjfnyd2iItB3CIiAIiIAiIgCIiAIiICi0dr1slCq7WGPIA3nKYHmt5Re33xRI4kD1n7lMVqko+yk5aYtniVXZTjfI+24sdH+Fkw+zngS2m4dzSu8IVW0pWpfx0FyzzO/L0cY3A13fUP2Wz6oNi1//wA3en4rvaNGAstkfRw9supujgW7Er6im7vlv4o/Z2IH1X/aH4rvJVXMBGio+gxvdsdyXB5/9Ar/AAOtzFvVV/2fX+E/aH4rsqlGDyWu8LpH+MwvlnN5pHKnZ1bXIZ/jbr5q3/Z9f4HfaHfx4rqgFdCv/WYfbHfkcmdnVvhdG8SPxVp2XV+A+bfxXXQqQn9biXLHfkcpQ2U8k5xkY0S5zrxOgAGrjeByK2xgMPBGaoI+uSyPdzTHCOama0QwOktfUcHdku3MFzPZgGZPE8VoVq9brCzdnLBSjslgk5QzQ2Avrv5rw8qfclGLpJ0epjjFQUpK2yLxGzHtIgZ2uEtc3QjuOh0spbocKlLGUiWuDXFzHWOjmmJ/mDVt0ngmo0GWsqANtHEayZkSZ5DgtrCPyua7g5p8iFu6LpY5sWttpozdRLtZElsejhVVAqqDYEREAREQBERAEREAREQFFznSmv7rBzcfkPvXRriekVYdc4u+rla0a6gHQa3ld+nrXb4M3VSqFeyOdUjfosmHrX7tfwUVXxRAMiBeJIme7irMNjA0A77k34/5I9V6Ms0djzVFnTsq/f6LHXqwFBDa7WN3kmYFt5v8x5FUx+0YbFiTz4C8cdPULnrgrdnRp7E2ypYHx87rOx9pXOVNpDJY3cSBF+RP54LYG0crQTPa0i9tB5xPipeSHshJku58k8rekqOfUmSFdRe3qzUqvDKU3cYl8RmDRvBNp0WB208jC+nh2MpzJq4lwaHE3mHce4LNk6/HilT8/g7x6WeRXsGPkxO+PST8is7ROl//AED961sFtR9QOLKWFrAe+KTwHCeNm/NbeBqMqPysLqdRuYuovHaJJnsOd3RvFhBVYfycJS0vx+SZdFKKvcoVhr1A3X8gaq59cNa5ziQSbhwEgNiZG6PmorauKAc3Kd0gHeCRE94EnvWyfURUbMqg7NxknMHCWGDFpDtxaNDAgEHWOQVzHv7IGIaWgRcPzlpaBHuyJMnhda1J5IaA4AHjE8yeJJm3eqdeBdrSZJE93EnQRfzsvPzdHiyy1W03v8mzF1M4R01a4NqmxrGta2YB1d7z3REngAJgcz4ZC+O9abK5N+zoSBNw0HVY2YoZp3AEnf4963Ye3hgoR8IzZJTyScpHq2DqZmNPFrT5hZ1HbBqTh6Z/dHpZSK8yW7PVg7imVREUFgiIgCIiAIiIAiIgKLznpVisuJqAWcGNLeBNt3G4P8nNejLyvp29xxLmDi0g2BBLA2JPGfQKybXlHDOrSIF9cOEExAOWdCYkyTJ4iLDRan0nfOg+WixV3lphwIIJFxGh4LA6pcj89/zVZSb3M6ibrMQ5oJGpAFx+fzCoazg4SZgb9DoIPJa0nsmLO0Osi4MeI9FUv4eCo3ItRt06gjLc/n5KX2Zh+txBY58sYMz3AxDWABwae+GzzBXLUq8kczPh+Quq2X2MHiXiA8hjJGty+fkColLTBstCClJJk7s7D/SX/SHgdWw5aFP6rWtsHxp3cu+RH9MdnivWZRfUyMDMzJbIe9znAhskdoNaPtc11mAohjGsEQ1oaO4CAojpVi2MylrwHgObkHaMPLTJA0gtGpEyV5OOUnPVzwen9MaTPPHTgMQytQJey4cXCMw7Ie1wAA3iDxXp21NmtrMBHZeL06g95pi0cRpI3+q4zaeH611N9Z7jTYQ1zWhuZ8lroGY290b5ib3hd9hNoU6oOR0katMgjvB+Ysume3FS59kNxUtJx+2qjqtDrHCKlJ3V1mjQz7rxyNr7wWrl61cnXhA8NNF3OPpjrsQ2LVMK5xFveZmIPfZvkuAqvEgHvhbcE5TgmzDngoy8ErQxRaA6QSBAvJAiLxpv8yq18QQyA0seBlqAgjs+80wdCRM8fFQb6nAi93cOQEDRbTKhflzPHwguJEgXAJOl5gmy0JyOGk3DiJEAQ60RYBo4gfMqlatDbHXURpdaDy5rsplpFjxmdDCyOqQ2flpfgrXKhpPauiDpwdE/un+5ymlA9Cv2Kj3O/vcp5GbI/aiqIigsEREAREQBERAEREBReU9O6QfjCycubIAYsTkEA8iYEr1ZeTe0Vv8AvJP8H9oCmJyy/acni6xdEzmZ2STqWj3QTxBkd0cFGufe2v8Ai63cc+ajjxJPnE275Wk1hB5xffIP5HmjRxSN17yGNB0aSQYMQ8NgctD6qlJpcBGsm3HT8VYx4cBNw22t4EQRPO/istAdjKd3y/PyVZCjE6mWvggtyWuN4JkeC6To8/rKOKoA9p1MPZ3skO/uBUC7M9+pzOyj+k377qY2JsrFsqMrMouGRwnPDGuYbOBzkSCJCpKNxaLwtSTJmr0rJYC0ik3Ic1R4l2ZoGYMZaTJiSd2ihqmEyZ3PrGox5a9pYA18m7s7XTra/HvW/tnY9BmIFR7RUoklxYHB2RztS4A9to3gd6iq+HYa7mH/AEnEupvYTlykg5QG2aWm0cuazYYRctK8ezVJ0rkrfBuYqm95aWsIykdiWgw6IkFoMRFrWTo9tDLicORcPY9jv4nbz4sHmVtUaORjixnagmS6SYt2nOvEeigNn4V2draVWXNcHF8ANaQZtOt1qzQxKFRa5/wzqUpZE2nf/TsMfjQH4quDanSFFpse2+Zjuzf0lcPj6jXHOBB0cALTrLRuneOK67bex6rmMo0AKlNkveRUYX1Kjge04Eg2k+ZK5LF4GpTJ6ym9kmwc0iYF4nXwXPBDTBJFszbl5NEP4ze3yWzgqbXywyHEHIZtmGjSODtO+FitfnGvjoVRtiDvBG/hf5rQjg0XPrZgDNxABJGg92d9rjwCq/3I/O5Yc0vM7yTbvlbuIYACJ92QRrykKyQo9m6C/sVLlnH9bl0K57oJ+xUv5/73LoVV7mmOyKoiKCwREQBERAEREAREQBeUe0a2Jnjk/tuvVl5V7TGf7ww82/2/4VonPJscTjGdu2+8cNT9ywMY2xmILRbUkl3/AGtPpxW9iWduOZHmHLSfQho1DjmMchI8NCjOKLc3DiRHObfJTmxMBTdTdiK73CmxxZDfee4TvM5QAW7puojE0j2TEZi4xwGZ0HyAU9gKebZ7BOuIeL83U/vXLI2la+P2dIpX54s3MHth5JZgMMGaDM1sv4Aufr5uWF+FxVbri+vBogmo2XT3CBB81LbbwjWVqGEY91NhDAMokuc4wXG4kzvWPrqeHrYmi97u3TDA9wntXu6O9cu2r8+fyUeWXDpfBz9PZzMlCq9z3Gq9zSLDKGuy+8ZJKzdJNnsoV3UqYMNy9pzpJJA/Hcq1sQwihRa4uFJznF4abkuzHKOAG88CVubW2hTrVH1HUamZwFiQGjK3NJESeyCYnzUvStilvcz4HYofhXve9xqZS9jSXEdW05T2ZjWfJR2ythsxFKs9rX56ZZka24fmMXBH3qSpbaeyox4pVAxrIFIEFha1gBNhwMkRvWDA7Zp0G12tbUYajhlMD9W5hmJtMEwUTiyW2yPrYVtJzGNxDg8wHhpJYx06Zge0PDzUnVxmNwz+oeRUkTk94OETYRGnJau18XQxGWs1wZWBHWMghryPrsPHkV0O0AXbRw723Y5oLXDQ9g6FQ4JslZJLkgMVh6WIo1H06fU1aQD3sAhjmg3hp90i5tAMGy5jEHK8jgSORgxddXsQl302TP6l+vIVFy2LZ+tMaEnyLl0wybTTOkvKT9mEMAMjS3qCVIVX7zo4nTcC6/yUY4GAOY9ICknMhkm9n28XR6ruijPY+gX7FS/m/uK6Jc50B/YqX8395XRqr3NEdkVREUEhERAEREAREQBERAUXPbe6MUsU4Pe54Ij3S2LA8QeK6FWuUohpPc4nEdAqBcT1lWb72bxHw81gf0Cw+hfVMCPeZxJ+Dmu4qBYHNUldKONxfQvDEBz3va1ggEuaAQJOmXmoDbH0dmGNHDPe5rH5y50GS9zfdIABHZ5ruOk+GNTDPAjMwS0mN3MrzXYdFlR72VXQ1wYbmCcrpsSe5YupyOKd7Kn8kqPlRXKZlHSSu/IMrXvYIa/IC8DkYnxWKnsXE135iwku3uPnxK6J+1MNhxkpMDj+4AT4nRS/RrahxDz2C3K10zukcYt3LJHqM2SS0xpN7sssGKPiTt+iAwHQnEMcH9YxjhMGxiQQYvwJUmOh7u1mxB7Qh0CZgRYxYxIPEEqefiyxzmhoMEb/AOEeGsq8YxxbmDN4HDWbnyC3dqN222ylxWyOfHRLQjEPkAgSdJid1tB5LTxnQp7pPXtN3OuN7oLju1hdQ/HvBMs4wOOhnyOqPxZABLTcAmBxDjrPIeantR4bQuL4PP8AGdDK7IjI6ZiDrHCJWmX4zDsLJqNZewkj00Xou2sS5mHbUYzMQTa/1gNSNFy2H6UkmKlPs8WnOPEfgsObLmhNqKuKr4ZftYmlbpshOju0RS6172h7XBrXNJiWvLg6/iux2NgsBifcotDxctcJMcjoQub6Q1MOWF1IAOeW5gARYGb2t4roPZvSaKdR4dLi5rSPhC79NklL6qq3sxKKi1Hw6W5OU+jGF/4dlj8IWy/o9ho/Z6f2ApGmFmcLL0SmkpgcO1jA1jQ1omAAABfgFtrHS0WRVZZBERQSEREAREQBERAEREAVpVyscgMT3LCSspWMqxBE9IcO9+HfTYJc8ho3WIvfcFBYDoTTaP1ry4/CywH82p812RdaFhIXJ4VKTk3/AIHXjwQn6LYUasceTnkhZqFejSd1FNgZuhrbExmjNxi6lCoxuBHWPe4akZbm3ZDTbSdVDxqLWlFZN8CltdhDiM0NBcZbFhMlvHQpU2wxoYXBwzmBI0niOH4rRw2ynsY9st7bCAZNjLraWbcHzVlfZbnMazstyh494kZj7pkjj5KLyVsc7kSVHazHNY8TD3ZBa831vyKozaTHHLBuXi8R2CAd+l1p0dnFoa0FsNqB4192DbvurKeznB5JczL+sLbnNL4NxuiFOqdIWzYwm3WPytY1xzNcQ0hsHLNiJ1MLcfsvDvu6gwnuUNgNjim9r87ezlnuFMtMeJldGxw0n1SEdS+tIvFuvJGV+jeFeI6kNPFkgjyTYOwfoz6mR2ZjwImxDmnQ8VLwsjFbsxtNeK9F0zJSCyPFkphHaLqDLR0WRY6OiyKjJCIiAIiIAiIgCIiAIiIArDqr1Y5AY3rE5ZqgWBxViDG4qgCq8qikqWVGSI/Oq0hgwPrH/wBEn71IFWOKhpMUaVeg2ZLozcuUfeFY4MgiZzOnxsPvCzvc8/VbEmJO7irXB4gZWRPpy9FWipgZTYDIJkSY72gcOAVjMOwkCXXt4huXhbRbXb4N9VaM9rM8z+CUvQoM2e0SRNxG7hl4ch5LYoUA0yJk8+8/eUYDv15LM1WUUWoNCyNVsqoKkGXMrnGyxgrK4dlCxlo6LIsVD3VlVGSEREAREQBERAEREAREQBY3K9aONxrKZ7TgJEibTHAlCG6NmoVru1WLEY9gY1+YQdLhRlXbTN7h5hTqSKuSJN6pmCham22X7bftBaz9v0wf9Rn2gjnFckakdEXXVHELmD0jp/G3zCsf0lpxd7fNRrj7I1I6UvC08fXgAD8yYv8AON65up0op/H5An7lp1+kTHiM5HMtd5qvdguSNSOmweKJcIM6zY7r8wbHVS7TC4LD9IqbTLnuJ/m4zw/NlvfphT4u8ineh7J1I7KVUOXGfpmzc15/l/ysT+mrRYsf5Afeneh7GpHcByuBXCfpy34H/wBP4oOnLfgd6finex+xqR37XhZs0tK4Kj00DtGHukLfHSt3VvcKXuje7lqbcVZTjLZkd2KOzoe6FkUdsHEuqUKdRwAL2h0DcHXHpCkUuzqtiqIiEhERAEREAREQBERAUUL0owHXUHge80FzfAXHl9ymlQhQ1aoiStUeSY+tOEojeHPH9X+VztbVdL0wodSer3CpUc0fuPDHD1zDwXJOesGb7qMdOzI55VOsWu56tz2XImjY61bL9pf8un9j/KjS5WZlZNrYmiep4gQMzmA8GuA3mPdYY4a/JZnYkE++CRdpFQWkQfebrAPmFB06bSQA+e5v4kLM/DQCZ04g8DwneIXXU62IokRiQ05JsRYhzDaN7osZHyWT6SALPA76jOZ3NB38VDMw83Dge4E/dyKo+hGro4S11/Tu81Kk1wSZ8RintOUVCQIjK6QI0ExuWpUrOcZc4k8SZKtfbeD3T96slcpNvckvkpmKtFRZqUOtadyKNgUa7mkOaYI0UzsZ7qrhRGbNUIaCDaHEAk9wJPgoJ1VoOq7b2ZYfPiHOP1GZu8k5fK8+AXTDeqkRp1Oj1SjTDWhrRAaAAOAAgLKiLcawiIgCIiAIiIAiIgCIiAKiqqIDy32s41rKtFsdoMc4ncWl0NA3yCHea87ONZ8QXXe2cl2JptAmKTQeUvefwXnLME82DSZsOfdxWXJBSk2zi4q2SwxbfiHmqHFt+IeakNk9AcdWEtoFjTEOqEMHke16Kbo+yXFuu6pQaf4nn5MULCRoOS+mt4hWnHM4rvaHsfqH38Uxv8DHO+ZC2B7HBvxhj/pD/wA1PYJ0HnJ2gzcQtc44HUnlwXsmD9llBpBqV6z4vAytExG4EjwKj9peyVsRh8QWtgAsqNzAwSRDmkEXPAq6wonT8HmH01vNUGN4SvRv/iuuMuXEUDlILQabxHG4cZn1WOl7LsXcOrYfK4NBjrD7hlpAAbHcCAo7JGl+jz04rvT6Uea9Dr+yfEOeXHFUu0S4/q3i7tYGbTxUXi/ZbjmGWGlUH7ry0nwcAPVVeJ+idJyBxR4+qrSeSRJB/dk+pCkcX0XxlH/Uw1Ua3DC8faZIChK1B7XE5S08CCPRRpIonGU3j62UG8NgeoufEr2zoZsMYbDgEfrHw551MnQTwA9ZXgeE2iQ1zHi50cZkchyK+kNk4+nXpNqUnBzHCxHEWIIOhBtC6Yo07JgvPkkERF3OoREQBERAEREAREQBERAFRVRAc1tbodhsTW6+sHudla2A8tbDdLNvv4qQ2ZsDDUL0aLGH4ol3i90u9VKIopEUgqoikkIiIAiIgCIiAIiICijNo7Cw9czWoMeeJb2o4SLwpNEBx1T2cYBxJ6tw5B7oHdvU/sPZFPC0hRoghgLiMxky4ybqSRQklsQkkVREUkhERAEREAREQBERAEREAREQFEVUQBERAEREAREQBERAEREBRFVEAREQBERAEREAREQBERAf/9k=', fit: BoxFit.cover,)
              child: Image.asset(itemArgs.img),
            ),
          ),
        ),
      ],
    );

    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.all(20)),
        Text(itemArgs.name, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        Row(
          children: [
            const Padding(padding: EdgeInsets.only(top: 50)),
            Text('IDR  ' +itemArgs.price.toString(), ),
          ],
        ),
        Row(
          children: [
            RatingBar(rating: 4, color: const Color.fromARGB(255, 243, 219, 6),)
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 50)),
        Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.blue.shade200,
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {},
            minWidth: 160.0,
            color: Colors.blue,
            child: const Text('BELI', style: TextStyle(fontSize: 15)),
          ),
        )
      ],
    );

    final topContent = Container(
      color: Theme.of(context).canvasColor,
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight),
        ],
      ),
    );

    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          topContent,
        ],
      ),
    );
  }
}