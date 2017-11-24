package controllers

import (
	"github.com/astaxie/beego"
	"fmt"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	data := [][]string{}
	tr := make([]string, 3)
	for i:=0; i<5;i++{
		tr[0] = fmt.Sprintf("Tanmay-%d", i)
		tr[1] = fmt.Sprintf("Bangalore-%d", i)
		tr[2] = fmt.Sprintf("560001-%d", i)
		data = append(data, tr)
	}
	c.Data["tables"]= data
	c.TplName = "index.tpl"
}
