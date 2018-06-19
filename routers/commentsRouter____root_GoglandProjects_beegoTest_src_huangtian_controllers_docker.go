package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

	beego.GlobalControllerRouter["huangtian/controllers/docker:DController"] = append(beego.GlobalControllerRouter["huangtian/controllers/docker:DController"],
		beego.ControllerComments{
			Method: "Stop",
			Router: `/stop`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

}
