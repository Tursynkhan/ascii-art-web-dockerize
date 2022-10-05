package main

import (
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/", home)
	mux.HandleFunc("/create", createAscii)
	fileServer := http.FileServer(http.Dir("ui/static/"))
	mux.Handle("/static/", http.StripPrefix("/static", fileServer))

	log.Println("http://127.0.0.1:8080")
	err := http.ListenAndServe(":8080", mux)
	log.Fatal(err)
}
