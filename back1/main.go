package main

import (
	"io/ioutil"
	"log"
	"net/http"
)

func main() {

	http.HandleFunc("/api/hello", func(w http.ResponseWriter, r *http.Request) {
		resp, err := http.Get("http://back2:9090/api/hello")
		if err != nil {
			w.Write([]byte(err.Error()))
		}
		str := "变身中级赛亚人...\n"
		bts, err := ioutil.ReadAll(resp.Body)
		if err != nil {
			w.Write([]byte(err.Error()))
			return
		}
		w.Write(append(append([]byte(str), bts...)))
	})
	http.HandleFunc("/api/ping", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("pong !"))
	})

	if err := http.ListenAndServe(":9090", nil); err != nil {
		log.Fatalln(err)
	}
}
