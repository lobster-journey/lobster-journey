#!/bin/bash
# 公开仓库安全检查脚本
# 每次提交公开库前必须执行

README="README.md"
ERRORS=0

echo "🔍 公开仓库安全检查"
echo "===================="

# 1. 检查私有仓库引用
echo ""
echo "📋 检查私有仓库引用..."
if grep -qi "private\|私有仓库\|lobster-journey-private" "$README" 2>/dev/null; then
    echo "❌ 发现私有仓库引用："
    grep -n -i "private\|私有仓库\|lobster-journey-private" "$README"
    ERRORS=$((ERRORS + 1))
else
    echo "✅ 无私有仓库引用"
fi

# 2. 检查敏感信息关键词
echo ""
echo "📋 检查敏感信息关键词..."
SENSITIVE_WORDS="token|cookie|session|密码|password|api.key|secret|密钥|敏感信息|内部运营"
if grep -qiE "$SENSITIVE_WORDS" "$README" 2>/dev/null; then
    echo "⚠️  发现敏感信息关键词："
    grep -n -iE "$SENSITIVE_WORDS" "$README"
    ERRORS=$((ERRORS + 1))
else
    echo "✅ 无敏感信息关键词"
fi

# 3. 检查内部路径暴露
echo ""
echo "📋 检查内部路径暴露..."
if grep -qE "~/.|/home/|/root/|/Users/" "$README" 2>/dev/null; then
    echo "⚠️  发现内部路径："
    grep -n -E "~/.|/home/|/root/|/Users/" "$README"
    ERRORS=$((ERRORS + 1))
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

# 5. 检查公司内部信息
echo ""
echo "📋 检查公司内部信息..."
COMPANY_WORDS="baidu-int|family.baidu|ugate|内部系统|企业内部"
if grep -qiE "$COMPANY_WORDS" "$README" 2>/dev/null; then
    echo "❌ 发现公司内部信息："
    grep -n -iE "$COMPANY_WORDS" "$README"
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
    echo "✅ 安全检查通过"
    exit 0
fi
