package main

import (
	"net/http"
	"os"
	"log"
	"fmt"
)

func main() {
	fmt.Println("starting", os.Getenv("SERVER"))
	log.Fatal(http.ListenAndServe(":80", http.HandlerFunc(func (w http.ResponseWriter, r *http.Request){
		w.Write([]byte(os.Getenv("SERVER")))
	})))
}