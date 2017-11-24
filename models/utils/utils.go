package utils

type Result struct {
	Code int    `json:"code"`
	Data string `json:"data"`
}

func NewResult(code int, data string) *Result {
	return &Result{Code: code, Data: data}
}
