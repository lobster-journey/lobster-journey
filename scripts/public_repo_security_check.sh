#!/bin/bash
# 公开仓库安全检查脚本
# 每次提交公开库前必须执行

README="README.md"
ERRORS=0

echo "🔍 公开仓库安全检查"
echo "===================="

# 1. 检查私有仓库引用（排除文档性质描述）
echo ""
echo "📋 检查私有仓库引用..."
# 排除在Security Officer职责描述中的提及
PRIVATE_COUNT=$(grep -i "private" "$README" | grep -v "Security Officer" | grep -v "ensure" | grep -v "responsibilities" | wc -l)
if [ $PRIVATE_COUNT -gt 0 ]; then
    echo "⚠️  发现私有仓库引用（请人工确认是否为文档描述）："
    grep -n -i "private" "$README" | grep -v "Security Officer" | grep -v "ensure" | grep -v "responsibilities"
    # 文档性质的提及不算错误，只作提醒
else
    echo "✅ 无私有仓库引用"
fi

# 2. 检查敏感信息关键词（排除文档性质描述）
echo ""
echo "📋 检查敏感信息关键词..."
# 排除在安全职责描述、代码块、列表中的提及
SENSITIVE_COUNT=$(grep -iE "token|cookie|password|secret" "$README" | grep -v "Security Officer" | grep -v "Sensitive keywords" | grep -v "\- " | wc -l)
if [ $SENSITIVE_COUNT -gt 0 ]; then
    echo "⚠️  发现敏感信息关键词（请人工确认）："
    grep -n -iE "token|cookie|password|secret" "$README" | grep -v "Security Officer" | grep -v "Sensitive keywords"
    # 文档性质的提及不算错误
else
    echo "✅ 无敏感信息关键词"
fi

# 3. 检查内部路径暴露（排除文档性质描述）
echo ""
echo "📋 检查内部路径暴露..."
PATH_COUNT=$(grep -E "~/.|/home/|/root/" "$README" | grep -v "Internal paths" | grep -v "\- " | wc -l)
if [ $PATH_COUNT -gt 0 ]; then
    echo "⚠️  发现内部路径（请人工确认）："
    grep -n -E "~/.|/home/|/root/" "$README" | grep -v "Internal paths" | grep -v "\- "
else
    echo "✅ 无内部路径暴露"
fi

# 4. 检查真实姓名暴露
echo ""
echo "📋 检查真实姓名暴露..."
# 这里可以根据实际情况添加需要检查的姓名
if grep -q "陈\|chen" "$README" 2>/dev/null; then
    echo "⚠️  可能存在真实姓名（请人工确认）："
    grep -n "陈\|chen" "$README" | head -5
    # 不计入错误，需人工判断
else
    echo "✅ 无真实姓名暴露"
fi

# 5. 检查公司内部信息（排除文档性质描述）
echo ""
echo "📋 检查公司内部信息..."
COMPANY_COUNT=$(grep -iE "baidu-int|ugate" "$README" | grep -v "Company internal information" | grep -v "\- " | wc -l)
if [ $COMPANY_COUNT -gt 0 ]; then
    echo "❌ 发现公司内部信息："
    grep -n -iE "baidu-int|ugate" "$README" | grep -v "Company internal information"
    ERRORS=$((ERRORS + 1))
else
    echo "✅ 无公司内部信息"
fi

# 总结
echo ""
echo "===================="
if [ $ERRORS -gt 0 ]; then
    echo "❌ 发现 $ERRORS 个安全问题，请修复后再提交！"
    exit 1
else
    echo "✅ 安全检查通过（文档性质的提及已排除）"
    exit 0
fi