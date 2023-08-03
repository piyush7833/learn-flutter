import 'package:first/FirstPage.dart';
import 'package:first/SplashPage.dart';
import 'package:first/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:first/uiHelper/util.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class FirstCusomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class SecondCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (item, context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
              title: Text("Name"),
              subtitle: Text("Mob No."),
              trailing: Icon(Icons.delete),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

class ThirdCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey,
        child: ListView.builder(
          itemBuilder: (item, context) => Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.0),
                  color: Colors.purple),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class FourthCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 11,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 400,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              color: Colors.amber,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              color: Colors.amber,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              color: Colors.amber,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}

class BtnCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Custom");
      },
      child: Text("Custom"),
    );
  }
}

class MyApp extends StatelessWidget {
  //their are two type of widgets one stateless //not manage state //no tun time change and one is statefull //manages state  //runtime change
  //extends act as inheritance
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //it returns a material app with stateless widget
      title: 'First',
      debugShowCheckedModeBanner: false,
      //lec 46 styles and themes
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontFamily: 'Schyler', fontSize: 20, color: Colors.red),
              subtitle1: TextStyle(fontFamily: 'italic', color: Colors.green))),
      home:
          SplashPage(), //home page  //starting point //any page can  be shown here
    );
  }
}

class MyHomePage extends StatefulWidget {
  //it returns a homepage with stateful widget //changes can occur at run time
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); //call function to create home page
}

class _MyHomePageState extends State<MyHomePage> {
  //creating home page
  var emailText = TextEditingController(); //for taking the value of input
  var userText = TextEditingController();
  var calcController1 = TextEditingController();
  var calcController2 = TextEditingController();
  var result = "";
  var nameController = TextEditingController();
  RangeValues val=RangeValues(0,10);
  DateTime? datePicked;
  TimeOfDay? timePicked;
  void callBack(String arg) {
    print(arg);
  }

  @override
  Widget build(BuildContext context) {
    var arrName = [
      "ps",
      "ns",
      "nn",
      "hn",
      "hk",
      "pk",
      "sk",
      "fk"
    ];
    var arrColors = [
      Colors.yellow,
      Colors.green,
      Colors.red,
      Colors.grey,
      Colors.orange,
      Colors.blue,
      Colors.black
    ];

    var mapName=[
      {
        'name':'pk',
         'id':'12',
         'unread':"4"
      },{
        'name':'sk',
         'id':'13',
        'unread':"3"
      },{
        'name':'gk',
         'id':'14',
        'unread':"2"
      },{
        'name':'kk',
         'id':'15',
        'unread':"1"
      },{
        'name':'lk',
         'id':'16',
        'unread':"9"
      },
    ];
    var time = DateTime.now(); //fetching curr date and time
    RangeLabels labels=RangeLabels(val.start.toString(),val.end.toString());  //it is in build as we want to update it as soon as slider changes

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Learn Flutter"),
      ),
      body:
      //lec 78 //mapping
      Container(
        color: Colors.amberAccent,
          child:ListView(
            children: mapName.map((e) =>
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(e["name"].toString()),
              subtitle: Text(e["id"].toString()),
              trailing: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.cyanAccent,
                  child: Text(e["unread"].toString())),
            )
            ).toList(),
          )
      )



      //array
      // Container(
      //   color: Colors.amberAccent,
      //     child: ListView( //using listview as similar to listview builder
      //       children: arrName.map((e) => Container(
      //           margin: EdgeInsets.all(10.0),
      //           decoration:BoxDecoration (
      //             color: Colors.red,
      //             borderRadius: BorderRadius.all(Radius.circular(31.0))
      //           ),
      //           child: Center(child: Text("$e",style: TextStyle(fontSize: 35,color: Colors.green),)))).toList(),
      //     ),
      // )


      //lec 76-77  //clirrect-gradient //cliprrect is used when we want to apply border radius or shape to widget where these things are not available
      // Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   // color: Colors.blue.shade300,
      //   decoration:
      //   // BoxDecoration(
      //   //   gradient: LinearGradient(
      //   //     // colors: [Colors.black,Colors.red,Colors.yellow],
      //   //     colors: [Color(0xffffecd2),Color(0xfffcb69f),Color(0xfff6d365)], //0xff:-0xf means headeicma f means transparency then hex color code
      //   //     begin:FractionalOffset(0.0,0.0),  //topleft=0,0 bottom left=0,1 topRight=0,1 bottom right=1,1
      //   //     end:FractionalOffset(1.0,1.0),   //it is used to define offset of end of gradient  //given is diagonal gradient
      //   //     stops: [0.3,0.9,1.0], //it is used when we have multiple clrs and we want few to come less or more in gradient
      //   //   )
      //   // ),
      //   // BoxDecoration(
      //   //   gradient: RadialGradient(
      //   //     // colors: [Colors.black,Colors.red,Colors.yellow],
      //   //     colors: [Color(0xffffecd2),Color(0xfffcb69f)], //0xff:-0xf means headeicma f means transparency then hex color code
      //   //     stops: [0.4,1.0], //it is used when we have multiple clrs and we want few to come less or more in gradient
      //   //     // center: Alignment.topLeft,
      //   //   )
      //   // ),
      //   // child: Center(
      //   //   child: ClipRRect(
      //   //     borderRadius: BorderRadius.only(topLeft: Radius.elliptical(71,50),bottomRight: Radius.elliptical(71,50)),
      //   //     child: Image(
      //   //       image: NetworkImage("https://i.pinimg.com/originals/0a/cf/48/0acf483ad17088f7d92536604f5296a5.png"),
      //   //       height: 200,
      //   //       width: 300,
      //   //       fit: BoxFit.fill, //when size is anything but we want it to fill parent box
      //   //     ),
      //   //   ),
      //   // ),
      // )




      //lec 68 //passing the data to other screen
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         "Home Page",
      //         style: TextStyle(fontSize: 45),
      //       ),
      //       TextField(
      //         controller: nameController,
      //         keyboardType: TextInputType.name,
      //         decoration: InputDecoration(
      //           hintText: "Enter name",
      //           enabledBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(11.0),
      //             borderSide: BorderSide(color: Colors.blue),
      //           ),
      //           focusedBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(11.0),
      //             borderSide: BorderSide(color: Colors.green, width: 4),
      //           ),
      //         ),
      //       ),
      //       Text("Feed back", style: TextStyle(fontSize: 25),),
      //       RangeSlider(
      //           values: val,
      //           labels: labels,
      //           divisions: 10,
      //           activeColor: Colors.green.shade600,
      //           inactiveColor: Colors.green.shade300,
      //           onChanged: (newValue){
      //           val=newValue;
      //           setState(() {
      //
      //           });
      //       }),
      //       ElevatedButton(
      //           onPressed: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => FirstPage(nameController.text.toString()))); //it is using stack to move
      //           },
      //           child: Text("First Page"))
      //     ],
      //   ),
      // )




      //lec 65 //constraint box //it is used when we need to limit the size of its chid  //we can use overflow options too
      // Center(
      //   child: ConstrainedBox(constraints: BoxConstraints(
      //     maxHeight: 100,
      //     minHeight: 50,
      //     minWidth: 50,
      //     maxWidth:100,
      //   ),
      //   child: Center(child: Text("hjsbdeeeeeeb",style: TextStyle(color: Colors.red,fontSize: 35,overflow: TextOverflow.fade),)),),
      // )

      //lec 64 //creating calculator as staetful widget
      // Container(
      //   color: Colors.blue.shade100,
      //   child: Center(
      //     child:Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text('Calculator',style: TextStyle(fontSize: 45,color: Colors.red),),
      //         TextField(
      //           keyboardType: TextInputType.number,
      //           controller: calcController1,
      //           style: TextStyle(fontSize: 35),
      //         ),TextField(
      //           keyboardType: TextInputType.number,
      //           controller: calcController2,
      //           style: TextStyle(fontSize: 35),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(21.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               ElevatedButton(onPressed: (){
      //                 var no1=int.parse(calcController1.text.toString());
      //                 var no2=int.parse(calcController2.text.toString());
      //                 var sum=no1+no2;
      //                 result="Sum of $no1 and $no2 is $sum";
      //                 setState(() {
      //
      //                 });
      //               }, child: Text('+',style: TextStyle(fontSize: 35),)),
      //               ElevatedButton(onPressed: (){
      //                 var no1=int.parse(calcController1.text.toString());
      //                 var no2=int.parse(calcController2.text.toString());
      //                 var diff=no1-no2;
      //                 result="Difference of $no1 and $no2 is $diff";
      //                 setState(() {
      //
      //                 });
      //               }, child: Text('-',style: TextStyle(fontSize: 35),)),
      //               ElevatedButton(onPressed: (){
      //                 var no1=int.parse(calcController1.text.toString());
      //                 var no2=int.parse(calcController2.text.toString());
      //                 var prod=no1*no2;
      //                 result="Product of $no1 and $no2 is ${prod.toStringAsFixed(2)}";
      //                 setState(() {
      //
      //                 });
      //               }, child: Text('*',style: TextStyle(fontSize: 35),)),
      //               ElevatedButton(onPressed: (){
      //                 var no1=int.parse(calcController1.text.toString());
      //                 var no2=int.parse(calcController2.text.toString());
      //                 var division=no1/no2;
      //                 result="Division of $no1 and $no2 is ${division.toStringAsFixed(2)}";
      //                 setState(() {
      //
      //                 });
      //               }, child: Text('/',style: TextStyle(fontSize: 35),)),
      //             ],
      //           ),
      //         ),
      //         Padding(padding: EdgeInsets.all(21.0),
      //           child: Text('${result}',style: TextStyle(fontSize: 28,color: Colors.green),),
      //         )
      //       ],
      //     )
      //   ),
      // )

      //lec 59-62 // Rich Text Widget-icons-font awesome icons - positioned widget
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Positioned(  //it is only for relative design i.e. in stack only
      //           height: 60,
      //           width: 60,
      //           top: 0,
      //           right: 0,
      //           child: FaIcon(FontAwesomeIcons.restroom,size: 55,color: Colors.red,)),
      //       Text('Welcome To',style: TextStyle(fontSize: 55,color: Colors.tealAccent),),
      //       Icon(Icons.fastfood_outlined,size: 55,color: Colors.red,),
      //       RichText(text: TextSpan(
      //         style: TextStyle(color: Colors.red,fontSize: 45),
      //         children:[
      //           TextSpan(text: 'M.'),
      //           TextSpan(text: 'U.',style: TextStyle(color: Colors.blue)),
      //           TextSpan(text: 'N.',style: TextStyle(color: Colors.yellow)),
      //           TextSpan(text: 'C.',style: TextStyle(color: Colors.green)),
      //           TextSpan(text: 'H.',style: TextStyle(color: Colors.orange)),
      //         ]
      //       )),
      //       RichText(text: TextSpan(
      //         style: TextStyle(color: Colors.red,fontStyle: FontStyle.italic,fontSize: 25),
      //         children: [
      //           TextSpan(text: 'Mobile '),
      //           TextSpan(text: 'Utility ',style: TextStyle(color: Colors.blue)),
      //           TextSpan(text: 'For ',style: TextStyle(fontSize: 15,color: Colors.black)),
      //           TextSpan(text: 'Nourishing ',style: TextStyle(color: Colors.yellow)),
      //           TextSpan(text: 'Campus ',style: TextStyle(color: Colors.green)),
      //           TextSpan(text: 'Hunger',style: TextStyle(color: Colors.orange)),
      //         ]
      //       ),),
      //     ],
      //   ),
      // )

      //lec 58 //sized box
      // Center(
      //   child: SizedBox( //if we want a container just to provide a height/width to its child then we can also use it
      //     //it is of three type //square //expanded //acquire min width of parent //shrink //acquire max width of parent
      //     //we can also use it for giving margin spacing
      //     height: 50,
      //     width: 100,
      //
      //     child: ElevatedButton(onPressed: (){
      //       print('sized box');
      //     }, child: Text("sized box"),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
      //   ),
      // )

      //lec 57 //Wrap Widget
      // Container(
      //   width: double.infinity,//to give full width to wrap
      //   height: double.infinity,
      //   child: Wrap( //it is similar t flex wrap //when our container gets oversized then our item comes to next row/column depends on axis direction
      //     //it is not possible with our simple row or column
      //     direction: Axis.horizontal,
      //     alignment: WrapAlignment.center,
      //     runAlignment: WrapAlignment.spaceEvenly, //cross axis alignemnet
      //
      //     spacing: 11,
      //     runSpacing: 11, //cros axis spacing
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //       ), Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ), Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.yellow,
      //       ), Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.blue,
      //       ), Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.black,
      //       ),Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //       ), Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ), Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.yellow,
      //       ), Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.blue,
      //       ), Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.black,
      //       ),
      //     ],
      //
      //   ),
      // )

      //lec 56 //custom widgets
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //           width: 200,
      //           child: rounded_btn(btnName: "Custom",icon: Icon(Icons.lock), voidCallback:(){print("callback is not null");},bgColor: Colors.blueGrey, textStyle: TextStyle(color: Colors.white,fontSize: 25),)
      //       ),
      //       Container(
      //           width: 200,
      //           child: rounded_btn(btnName: "Play",icon: Icon(Icons.play_arrow), voidCallback:(){print("callback is not null");},bgColor: Colors.blueGrey, textStyle: TextStyle(color: Colors.white,fontSize: 25),)
      //       ),
      //       Container(
      //           width: 200,
      //           child: rounded_btn(btnName: "Play",voidCallback:(){print("callback is not null");},bgColor: Colors.orange, textStyle: TextStyle(color: Colors.white,fontSize: 25),)
      //       ),
      //     ],
      //   ),
      // )

      //lec 55,62 stack widget -positioned widget //when we have to overflow or overlay some widget then we use it
      //example text over image //it provides relative pattern
      // Stack(
      //   children: [
      //     Container(
      //       height: 400,
      //       width: 400,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       height: 300,
      //       width: 300,
      //       color: Colors.grey,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.orange,
      //     ),
      //     Positioned(
      //       left: 21,
      //       top: 21,
      //       // right: 21, //this will happen in relative to the biggest children or the widget having it
      //       // bottom: 21,
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.pink,
      //       ),
      //     ),
      //     BtnCustomWidget(),
      //
      //   ],
      // )

      //lec 54 //splitting the app into custom widgets //reduce code redundancy //write cleaner code  //similar to components in react
      // Column(
      //   children: [
      //     FirstCusomWidget(),
      //     SecondCustomWidget(),
      //     ThirdCustomWidget(),
      //     FourthCustomWidget(),
      //   ],
      // )

      //lec 53 //callback function //it i used when we want a function to run first before running any other function //or we want a function to pass as an arguemnt then also we use call back function
      //  Center(
      //    child: ElevatedButton(onPressed: (){
      //      // print('CallBack');
      //      callBack('Callback'); //function passed as argument //it is used when we have to use a function at multiple sites or we need to manage data flow
      //    }, child: Text('Call back function')),
      //  )

      //lec 53 //all type of grid view
      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 200,
      //         child: GridView.builder(gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100, crossAxisSpacing: 11,mainAxisSpacing: 11)  ,itemBuilder:  (context,index){  //using grid builder we can use grid count as well as grid extent
      //           return Container(
      //             color: arrColors[index],
      //           );
      //         } ,itemCount: arrColors.length,),
      //       ),
      //       Container(
      //         height: 200,
      //         child: GridView.extent(  //lec 52 GridView.extend //this works on size i.e. maximum size of a container is fix after that width a new widget/container is placed
      //           maxCrossAxisExtent: 100,
      //           crossAxisSpacing: 11, //col spacin
      //           mainAxisSpacing: 11, //row spacing
      //
      //         children: [
      //           Container(
      //                 // margin: EdgeInsets.all(8.0),  //we can give spacing using cross axis spacing also /so work good with difeerent sizes
      //                 // height: 20,  //this doesn't matter
      //                 // width: 20,
      //                 color: Colors.yellow,
      //               ),
      //               Container(
      //                 // margin: EdgeInsets.all(8.0),
      //                 color: Colors.green,
      //               ),
      //               Container(
      //                 // margin: EdgeInsets.all(8.0),
      //                 color: Colors.red,
      //               ),
      //               Container(
      //                 // margin: EdgeInsets.all(8.0),
      //                 color: Colors.grey,
      //               ),
      //               Container(
      //                 // margin: EdgeInsets.all(8.0),
      //                 color: Colors.orange,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.all(8.0),
      //                 color: Colors.blue,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.all(8.0),
      //                 color: Colors.black,
      //               ),
      //         ],
      //         ),
      //       ),
      //
      //
      //       //lec 52 //GridView.count  //it works on count i.e. number of element in an axis
      //       Container(
      //         height: 200,
      //         child: GridView.count(
      //           crossAxisCount: 4, //it is automatically scrollable
      //           crossAxisSpacing: 11, //col spacing
      //           mainAxisSpacing: 11, //row spacing
      //           children: [
      //             Container(
      //               // margin: EdgeInsets.all(8.0),  //we can give spacing using cross axis spacing also
      //               // height: 20,  //this doesn't matter
      //               // width: 20,
      //               color: Colors.yellow,
      //             ),
      //             Container(
      //               // margin: EdgeInsets.all(8.0),
      //               color: Colors.green,
      //             ),
      //             Container(
      //               // margin: EdgeInsets.all(8.0),
      //               color: Colors.red,
      //             ),
      //             Container(
      //               // margin: EdgeInsets.all(8.0),
      //               color: Colors.grey,
      //             ),
      //             Container(
      //               // margin: EdgeInsets.all(8.0),
      //               color: Colors.orange,
      //             ),
      //             Container(
      //               margin: EdgeInsets.all(8.0),
      //               color: Colors.blue,
      //             ),
      //             Container(
      //               margin: EdgeInsets.all(8.0),
      //               color: Colors.black,
      //             ),
      //           ],
      //
      //         ),
      //       )
      //     ],
      //   ),
      // )

      // lec 49-51,63 fetching current date and time //fetchin date in format //date picker
      // Center(
      //   child: Container(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text('Curr time : ${time.hour}  hr  ${time.minute} min',style: myTextStyle5(),),
      //                                        //format type
      //         Text('Curr time : ${DateFormat('jms').format(time)}  hr',style: myTextStyle5(),),  //formatted date
      //         Text('Curr time : ${time}',style: myTextStyle5(),),
      //
      //         ElevatedButton(onPressed: (){
      //           setState(() {  //we have statefull widget so we can set state at a moment using this //like in redux  //it updates the value in run time
      //           });
      //         },child: Text('Curr Time')),
      //         Text('Selected Date ${datePicked}',style: myTextStyle5()),
      //         //similarly we have time picker
      //         ElevatedButton(onPressed: () async{  //date picker may take time so we should use async and await
      //               datePicked= await showDatePicker(  //datePicked may be of type null so we have to use question mark
      //               context: context,
      //               initialDate: DateTime.now(),
      //               firstDate: DateTime(2000),
      //               lastDate: DateTime(2030)
      //           );
      //               if(datePicked!=null){
      //                 setState(() {  //call it to rebuild our statefull widget
      //
      //                 });
      //               }
      //         }, child: Text('Pick Date')),
      //
      //         Text('Selected Time ${timePicked}',style: myTextStyle5()),
      //         ElevatedButton(onPressed: ()async{
      //           timePicked=await showTimePicker(
      //               context: context,
      //               initialTime: TimeOfDay.now(),
      //             initialEntryMode: TimePickerEntryMode.dial,  //we can also set initial entry mod
      //           );
      //           if(timePicked!=null){
      //             setState(() {
      //
      //             });
      //           }
      //         }, child: Text('Pick Time')),
      //       ],
      //     ),
      //   ),
      // )

      //lec 48 Input Text
      // Center(
      //   child: Container( //for styling
      //     width: 300,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(bottom: 6.0),
      //           child: TextField(  //focussed text field
      //             // enabled: false,  //disabling an input
      //             keyboardType: TextInputType.emailAddress, //for changing keyboard type //input tye in web
      //               controller: emailText,  //for taking values and storing it
      //               decoration: InputDecoration(
      //                 hintText: 'Enter email',  //it is like placeholder
      //                 hintStyle: myTextStyle10(),
      //                 focusedBorder: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(20),
      //                     borderSide: BorderSide(
      //                       color: Colors.red,
      //                       width: 2,
      //                     )
      //                 ),
      //                 enabledBorder: OutlineInputBorder(  //by default all borders are enabled
      //                     borderRadius: BorderRadius.circular(20),
      //                     borderSide: BorderSide(
      //                       color: Colors.blue,
      //                       width: 2,
      //                     )
      //                 ),
      //                 disabledBorder: OutlineInputBorder(  //by default all borders are enabled
      //                     borderRadius: BorderRadius.circular(20),
      //                     borderSide: BorderSide(
      //                       color: Colors.grey,
      //                       width: 2,
      //                     )
      //                 ),
      //                 suffixText: "email exist",
      //                 suffixStyle: myTextStyle5(),
      //                 prefixIcon: Icon(Icons.mail,color: Colors.blue,), //all thing we can do with suffix is done with prefix too // if we not want to use press feature we can directly use icons
      //                prefixText: "Enter email",
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //                   borderSide: BorderSide(  //this color will not be applied we nee to specify the context //by default color will be of theme color
      //                       color: Colors.green
      //                   )
      //                 ),
      //               ),
      //           ),
      //         ),
      //         Container(
      //           child: TextField(
      //             controller: userText,
      //             obscureText: true, //as it is password by default ir should be hidden
      //             obscuringCharacter: '*', //we can also set obscure character
      //             decoration: InputDecoration(
      //               focusedBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(20),
      //                 borderSide: BorderSide(
      //                     color: Colors.red,
      //                 ),
      //               ),
      //               focusColor: Colors.yellowAccent,
      //               prefixText: 'Enter password',
      //               suffixIcon: IconButton(
      //                 icon: Icon(Icons.remove_red_eye,color: Colors.blue,),  //we can also apply widget on suffix tooo
      //                 onPressed: (){
      //                   print("icon pressed");
      //                 }
      //                 ,
      //               ),
      //               prefixIcon: Icon(Icons.password),
      //               border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //                   borderSide: BorderSide(
      //                       color: Colors.red
      //                   )
      //               ),
      //             ),
      //           ),
      //         ),
      //         ElevatedButton(onPressed: ()
      //             {
      //               String uemail=emailText.text.toString();  //fetching data
      //               String upwd=userText.text;
      //               print("Email : $uemail Pswd: $upwd");
      //             }, child: Text("Log in"))
      //       ],
      //     ),
      //   ),
      // )

      //lec 47 //Card widget //it looks like 3d due to shadow effect
      // Center(
      //   child: Card(
      //     color: Colors.grey,
      //     shadowColor: Colors.green,
      //     elevation: 5, //more elvation/shadow
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Hello Piyush", style: myTextStyle5(),),
      //     ),
      //   ),
      // )

      //lec 43-46 ListTile-CircleAvatar-font styles-styles and themes  //list tile genrally have three components :-leading,title/subtitle/trailing
      // ListView.separated(itemBuilder: (context,index){  //listview builder uses memory recycling  //we can use row and column both inside a listview
      //   return ListTile(
      //     leading:CircleAvatar(
      //             // ignore: prefer_const_constructors
      //       // child: Text('data',style: TextStyle(color: Colors.red),), //we can place any container/child inside circular avatar
      //       //we can also use image and text in column so that they come one after other
      //       child:  Container(
      //         height:20,
      //         width:20,
      //         child: Column(
      //           children : [
      //               Container(
      //               height: 12,
      //               width: 12,
      //                 child: Image.asset('assets/images/HomeLogo.png')
      //             ),
      //             Text('Name',style:myTextStyle4(),), //custom style
      //           ],
      //         ),
      //       ),
      //       // backgroundImage: NetworkImage('https://w7.pngwing.com/pngs/858/581/png-transparent-profile-icon-user-computer-icons-system-chinese-wind-title-column-miscellaneous-service-logo.png'),  //if we are taking image from network or server //if we are using default image from asset we can use AssetImage class
      //       backgroundColor: Colors.blue,
      //       radius: 25,//for changing size of avatar
      //     ),  //we can remove any of the part  //circleAvatar is just used to implement image in circular view by default
      //     title: Text("${arrName[index]}",style:myTextStyle5(textColor: Colors.yellowAccent),),
      //     subtitle: Text('Number',style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 10),), //extra style with theme
      //     trailing:Icon(Icons.add)
      //   );
      // },
      // itemCount: arrName.length,
      //   scrollDirection: Axis.vertical,
      //   separatorBuilder: (context,index){
      //       return(Divider(height: 100,thickness: 4,));  //it is used to provide divide like hr in web //rarely used
      //   },
      //   // itemExtent: 100,  //only applicable if we are using builder //it extent like if num of data is this much
      // )

      //lec41-42 expanded widgets-margin/padding  //jis pr v ye widget lgega vo bchi hui space le lega //ya phir hum ratio mein v kr skte h
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     const Padding(
      //       padding: EdgeInsets.only(top: 8.0),
      //       child: Text("Hello World",style: TextStyle(fontSize: 25),),  //for using margin in text wrap text with container then apply margin
      //     ),
      //     Container(
      //       // width: 50,
      //       padding: EdgeInsets.all(4.0),
      //       margin: EdgeInsets.all(8.0),
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       // width: 50,
      //       height: 100,
      //       color: Colors.black,
      //     ),
      //     Container(
      //       // width: 50,
      //       height: 100,
      //       color: Colors.brown,
      //     ),
      //     Expanded( //jb v do widget pr expanded legega vo bachi hui space ko same ratio mein le lenge
      //       flex: 2,//ab jo bcha hua space hain vo ratio mein hoga 2:1 ke //by default flex is 1
      //       child: Container(
      //         // width: 50,
      //         height: 100,
      //         color: Colors.blueGrey,
      //       ),
      //     ),
      //     Expanded( //ye widget vo saari space le lega jo bachi hui h
      //       child: Container(
      //         // width: 50,
      //         height: 100,
      //         color: Colors.lightBlue,
      //       ),
      //     ),
      //   ],
      // )

      //lecture 40 decorate container
      // Container( //if height will not be provided it will take height of its child
      //   height: double.infinity,  //it will give full height
      //   width: double.infinity,
      //   color: Colors.cyanAccent,
      //   child: Center(
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       //color: Colors.green,  //if we are using decoration then we should use color inside decoration
      //       decoration: BoxDecoration(
      //         color: Colors.green,
      //         // borderRadius:BorderRadius.circular(20),
      //         // borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.elliptical(20, 10)),
      //         border: Border.all(color: Colors.black, width: 10,),
      //         boxShadow: [
      //           BoxShadow(
      //             blurRadius: 11,
      //             spreadRadius: 5,
      //             color: Colors.red,
      //           )
      //         ],
      //         shape: BoxShape.circle,  //remve border radisu if you want to use shape
      //       ),
      //     ),
      //   ),
      // )

      //til lecture 39 //listView
      // ListView.separated(itemBuilder: (context,index){  //listview builder uses memory recycling  //we can use row and column both inside a listview
      //   return Container(
      //     child: Text(arrName[index],style: TextStyle(fontSize: 25),),
      //     margin: EdgeInsets.all(2.0),
      //     height: 100,
      //     width: 300,
      //     color: Colors.green,
      //   );
      // },
      // itemCount: arrName.length,
      //   scrollDirection: Axis.vertical,
      //   separatorBuilder: (context,index){
      //       return(Divider(height: 100,thickness: 4,));  //it is used to provide divide like hr in web //rarely used
      //   },
      //   // itemExtent: 100,  //only applicable if we are using builder //it extent like if num of data is this much
      // )

      // ListView(  //till now it is similar to scroll widget but now we will use list view builder which will used in dynamic data case
      //   scrollDirection: Axis.vertical,
      //   reverse: true,
      //
      //   children: [
      //     Container(
      //       margin: const EdgeInsets.all(2.0),
      //       height: 200,
      //       width: 200,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       margin: const EdgeInsets.all(2.0),
      //       height: 200,
      //       width: 200,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       margin: const EdgeInsets.all(2.0),
      //       height: 200,
      //       width: 200,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       margin: const EdgeInsets.all(2.0),
      //       height: 200,
      //       width: 200,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       margin: const EdgeInsets.all(2.0),
      //       height: 200,
      //       width: 200,
      //       color: Colors.blue,
      //     ),
      //   ],
      // )
      //
      //
      //
      // //till lecture 36  //scroll view, Container, Text, Column, Row, InkWell, Center,
      //
      //
      // SingleChildScrollView(  //it is used when we need a scroll view for different type of component //we use list view when we have similar type of component  //we can do the same thing with horizontal  //but we need to specify direction in this case
      // //   child: Container(  //we can wrap a column in container too
      // //     color: Colors.amber,
      // //     child: Column(  //for col main axis is y-axis but fro row main axis is x-axis and cross axis is vice versa
      // //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //it is similar to justify space evenly //their are many other options too
      // //       crossAxisAlignment: CrossAxisAlignment.stretch,  //it stretches the component which not have pre defined size
      // //       children: [
      // //         Text('A',style: TextStyle(fontSize: 25),),
      // //         Text('B'),
      // //         Center(  //container which is wrap up in center have no affect with change in axis alignement
      // //           child: InkWell(  //it is used to perform click action on any type of widget
      // //             onTap: (){
      // //               print('Container is pressed');
      // //             },
      // //             onDoubleTap: (){
      // //               print('container double tapped');
      // //             },
      // //             child: Container(
      // //               height: 200,
      // //               width: 200,
      // //               color: Colors.indigo,
      // //               child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //             ),
      // //           ),
      // //         ),
      // //         Container(
      // //           margin: EdgeInsets.only(bottom:2),
      // //           height: 200,
      // //           width: 200,
      // //           color: Colors.indigo,
      // //           child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //         ),
      // //         Container(
      // //           margin: EdgeInsets.only(bottom:2),
      // //           height: 200,
      // //           width: 200,
      // //           color: Colors.indigo,
      // //           child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //         ),
      // //         Container(
      // //           margin: EdgeInsets.only(bottom:2),
      // //           height: 200,
      // //           width: 200,
      // //           color: Colors.indigo,
      // //           child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //         ),
      // //         Container(
      // //           margin: EdgeInsets.only(bottom:2),
      // //           height: 200,
      // //           width: 200,
      // //           color: Colors.indigo,
      // //           child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //         ),
      // //         Container(
      // //           margin: EdgeInsets.only(bottom:2),
      // //           height: 200,
      // //           width: 200,
      // //           color: Colors.indigo,
      // //           child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //         ),
      // //         ElevatedButton(onPressed: (){
      // //           print('elevated btn');
      // //         }, child: Text('Elevated btn')),
      // //         SingleChildScrollView(
      // //           scrollDirection: Axis.horizontal,
      // //           child: Row(
      // //             children: [
      // //               Text('A'),
      // //               Text('data'),
      // //               OutlinedButton(onPressed: (){
      // //                 print('outlined btn');
      // //               }, child: Text('Outlined btn')),
      // //               Container(
      // //                 margin: EdgeInsets.only(bottom:2),
      // //                 height: 200,
      // //                 width: 200,
      // //                 color: Colors.indigo,
      // //                 child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //               ),
      // //               Container(
      // //                 margin: EdgeInsets.only(bottom:2),
      // //                 height: 200,
      // //                 width: 200,
      // //                 color: Colors.indigo,
      // //                 child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //               ),
      // //               Container(
      // //                 margin: EdgeInsets.only(bottom:2),
      // //                 height: 200,
      // //                 width: 200,
      // //                 color: Colors.indigo,
      // //                 child: Text('Click here',style: TextStyle(fontSize: 25)), //we can not put ink well inside inkwell
      // //               ),
      // //
      // //             ],
      // //           ),
      // //         ),
      // //         Column(
      // //           children:<Text> [  //we can fix the data type or we can left it blank too
      // //             Text('data col'),
      // //
      // //           ],
      // //         )
      // //       ],
      // //     ),
      // //   ),
      // // )
      //
      //
      //
      //
      //
      // // Center(  // poori body ka center hain isne align or justify dono krke ekdm center mein laa dega
      //   // child:Container(
      //     // child: Container(
      //     //   width: 200,
      //     //   height: 200,
      //     //   color: Colors.lightGreen,
      //     //   child:Center(child: Text("Hello World",style: TextStyle(fontSize: 25, color: Colors.white, backgroundColor: Colors.lightBlue),)),  //child means div ke andr ka elemnt
      //     // )
      //   // )
      //
      //   // child:TextButton(
      //   //   child: Text('TextButton'),
      //   //   onPressed: (){
      //   //     print("text Button clicked");
      //   //   },
      //   //   onLongPress: (){
      //   //     print('long press text button');
      //   //   },
      //   // ),
      //
      // //   child:ElevatedButton(
      // //     child: Text('Elevated Button'),
      // //     onPressed: (){
      // //       print("elevated btn");
      // //     },
      // // )
      // //     child: OutlinedButton(
      // //       child: Text("Outlined Btn"),
      // //       onPressed: (){
      // //         print("outlined btn clicked");
      // //       },
      // //     ),
      // //     child:Center(child: Container(
      // //         width: 200,
      // //         height: 200,
      // //         child: Image.asset('assets/images/HomeLogo.png')
      // )
      // )
      //
      //     // Column(
      //     //   children: [],
      //     // )
      //   // )
      //
      // // )
      , // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
