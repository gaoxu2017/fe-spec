
module.exports = {
  rules: {
    'body-leading-blank': [1, 'always'],    //正文前面空白
    'body-max-line-length': [2, 'always', 100],  //内容的最大长度
    'footer-leading-blank': [1, 'always'],   // 尾部前面空白
    'footer-max-line-length': [2, 'always', 100], //尾部最大长度
    'header-max-length': [2, 'always', 100],   //头部最大长度
    'scope-case': [2, 'always', 'lower-case'], //他的范围
    'subject-case': [0],     //主题的规则
    'subject-empty': [2, 'never'], //主语为空-不校验
    'subject-full-stop': [2, 'never', '.'], //主语结束句号：. 
    'type-case': [2, 'always', 'lower-case'], //检验的类型为小写
    'type-empty': [2, 'never'],  //类型为空
    'type-enum': [2, 'always', ['feat', 'fix', 'docs', 'style', 'test', 'refactor', 'chore', 'revert']],//所有类型选择一个
  }
}