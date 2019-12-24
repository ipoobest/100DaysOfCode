package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {
	router := mux.NewRouter()
	router.HandleFunc("/api", DoHealthCheck).Methods("GET")
	log.Fatal(http.ListenAndServe(":8080", router))
}
func DoHealthCheck(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Day 2 Nginx Reverse Proxy to serve Go with Docker")
	w.WriteHeader(http.StatusAccepted) //RETURN HTTP CODE 202
}
