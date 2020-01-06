package main

import(
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request){
		fmt.Fprintln(w, "Hello World", r.URL.Path)
	})

	http.ListenAndServe(":8989", nil)
}