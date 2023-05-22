# テンプレートMarkdownサンプル

## usermap.conf の動作確認サンプル

{{if in_user -}}
usermap.conf に設定されています。
{{else -}}
usermap.conf に設定されていません。
{{end -}}

{{if in_group "groupA" -}}
あなたは group A です。
{{end -}}
{{if in_group "groupB" -}}
あなたは group B です。
{{end -}}

