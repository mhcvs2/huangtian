package routers

import (
	"huangtian/controllers"
	"github.com/astaxie/beego"
	"huangtian/controllers/docker"
)

func init() {
    beego.Router("/", &controllers.MainController{})
	ns := beego.NewNamespace("/docker",
		beego.NSInclude(
			&docker.DController{},
		))
	beego.AddNamespace(ns)
}
