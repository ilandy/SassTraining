# SassTraining

## 6/17 上課筆記

1. 使用 cmd 寫 Sass
2. 套件寫 Sass
	2-1. https://prepros.io/
	2-2. http://fireapp.kkbox.com/
	2-3. http://koala-app.com/

### Sass 

#### 基本設定與觀念 
1.  使用 " compass create 專案名程 "，建立 Sass 專案。
2.  注意使用的層級。
3.  Scss 可以兼容一般的 CSS 對於開發與整合會有較好的優勢。
4.  `&` 符號是用在同層級的樣式選擇器。
5.  `//`  不會被 compiler 到原始檔，`/**/` 會被 compiler 到 CSS

---

#### 變數
1. `$` 是 Sass 宣告變數的方式。
2. CSS 屬性中的值都可以拿來宣告為變數。
3. `+-` 的計算是需要相同單位
4. `*/` 的計算是有單位 vs 無單位

---

#### 匯入 @improt 分檔載入
1. 原本 CSS @import 是在完成 <link> 載入後才去發 Request;
2. 在 Sass 中可以透過 @import 做不同模組的 Sass 的管理。

---

#### 繼承 % 與 @extend
1. 解決固定不變的 CSS 樣式
2. 透過 `%btn` 動態產生 CSS 樣式，有使用到 @extend 
3. 由於 @extend 會將 class 統一管理，因此不可以寫在 media query 中，@extend 應該自帶 media query
4. 建議將 @extend 建議放在最上方


#### 混用 @mixin 與 @include
1. 建議在使用 mixin 時一定要傳參數，若沒有參數則使用 @extend 即可，以降低重複 code 的產生。
2. mixin 可以在 `($color:red)` 內加入預設值，但是基本上盡量不要使用預設值，降低 CSS 的大小。
3. 針對變動樣式的處理

### 函式 @function 與 @return 
1. 針對處理值的部分
2. 給予 function 值並 return 值

```
//Exmple
@function name($number){
	@return $number
}
```

---

#### compass config.rb
1. 檔案壓縮格式(output_style)：
  1-1. :extend 預設展開
  1-2. :nested 巢狀樣式
  1-3. :compact 單行樣式
  1-4. :compressed 壓縮樣式
2. `Encodeing.default_external = "utf-8"`
  2-1. 設定檔案預設的編碼
3. compass 常用指令
  3-1. `compass watch` 監看 Sass 檔案修改
  3-2. `compass compile` 編譯 Sass 檔案
4. relative_assets 可開關相對或絕對路徑加上 http_path


---

#### Reset 新觀念 
1. 是否需要全部的樣式做 Reset? 使用 Reset 因覆蓋所產生的效能問題

[Emment 學習網站](https://docs.emmet.io/cheat-sheet/)
