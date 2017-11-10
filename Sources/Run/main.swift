import App

/// We have isolated all of our App's logic into
/// the App module because it makes our app
/// more testable.
///
/// In general, the executable portion of our App
/// shouldn't include much more code than is presented
/// here.
///
/// We simply initialize our Droplet, optionally
/// passing in values if necessary
/// Then, we pass it to our App's setup function
/// this should setup all the routes and special
/// features of our app
///
/// .run() runs the Droplet's commands, 
/// if no command is given, it will default to "serve"
let config = try Config()
try config.setup()

let drop = try Droplet(config)
try drop.setup()

//How to use drop.view("index.html") ???
print("""
                    **
                  **~~**
                **~~~~~~**
              **~~~~~~~~~~**
            **~~~~~~~~~~~~~~**
          **~~~~~~~~~~~~~~~~~~**
        **~~~~~~~~~~~~~~~~~~~~~~**
       **~~~~~~~~~~~~~~~~~~~~~~~~**
      **~~~~~~~~~~~~~~~~~~~~~~~~~~**
     **~~~~~~~~~~~~~~~~~~~~~~~~~~~~**
     **~~~~~~~~~~Vapor~~~~~~~~~~~~~**
     **~~~~~~~~~~~~~~~~~~~~~++++~~~**
      **~~~~~~~~~~~~~~~~~~~++++~~~**
       ***~~~~~~~~~~~~~~~++++~~~***
         ****~~~~~~~~~~++++~~****
            *****~~~~~~~~~*****
               *************

     curl -v http://127.0.0.1:8080/foodpicker
     wrk -c 10 -t 4  http://127.0.0.1:8080/foodpicker/
     Running 10s test @ http://127.0.0.1:8080/foodpicker/
      4 threads and 10 connections
      Thread Stats   Avg      Stdev     Max   +/- Stdev
        Latency    12.98ms   59.77ms 669.02ms   96.22%
        Req/Sec     1.75k   710.60     4.02k    72.85%
      66902 requests in 10.05s, 8.52MB read
     Requests/sec:   6654.51
     Transfer/sec:    868.10KB
    """)

try drop.run()
