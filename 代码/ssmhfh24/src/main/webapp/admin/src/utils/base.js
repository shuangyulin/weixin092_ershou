const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmhfh24/",
            name: "ssmhfh24",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmhfh24/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "二手闲置交易市场小程序"
        } 
    }
}
export default base
