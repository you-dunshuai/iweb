//在 控制台中输出99乘法表
for(let i=1;i<=9;i++){
	let output=''
	for(let j=1;j<=i;j++){
		output+=i + '*' +j+ '=' + i*j + ' '
	}
	console.log(output)
}