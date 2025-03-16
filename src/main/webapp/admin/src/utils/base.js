const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm5wauf/",
            name: "ssm5wauf",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm5wauf/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "线上导医系统"
        } 
    }
}
export default base
