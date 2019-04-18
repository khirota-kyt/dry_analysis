### タイトル
RNA-SeqのdataについてGene set enrichment analysisであきらかになったGene Ontologyの遺伝子セットの発現の差を可視化した

### 著者
広田 喜一 (Hirota, Kiichi)

坊農 秀雅 (Bono, Hidemasa)

### 所属
広田: 関西医科大学 附属生命医学研究所 侵襲反応制御部門

坊農: 情報・システム研究機構 ライフサイエンス統合データベースセンター

###  mail address
広田: hif1@mac.com

坊農: bono@dbcls.rois.ac.jp

### GitHub
広田: khirota-kyt

坊農: bonohu


###  論文のdoi
doi: 10.1038/s41598-018-27220-8

###  図の番号
Figure 6b

### 図のタイトル
Gene set enrichment analysis of RCC4cells.
GO:0061621 (canonical glycolysis) in RCC4-EV and RCC4-VHL cells.

### 図

![fig6b](https://github.com/khirota-kyt/dry_analysis/blob/master/fig6b.png)

### 論文の概要

麻酔 および集中治療領域で広く用いられている全身麻酔・鎮静用剤 プロポフォール（「ディプリバン®」 「プロポフォール®」など）を投与した際に稀に生じる副作用、プロポフォール注入症候群・Propofol Infusion Syndrome（以下「PRIS」）の発症メカニズムの基盤としてプロポフォールがミトコンドリア機能の障害をもたらしその結果発生する活性酸素種(ROS)が細胞死をもたらす現象を見出し報告していたが、今回の研究で低酸素誘導性因子1（hypoxia-inducible factor 1、以下「HIF-1」）の遺伝子工学的または薬理学的な人為的な活性化により細胞死を低減し得ることを示した。

RCC4細胞は腎臓癌由来の細胞株です。癌細胞の性質としてVHL(Von Hippel-Lindau; フォンヒッペル・リンドウ）遺伝子が欠損していて転写因子hypoxia-inducible factorが通常状態でも活性化しているという性質をもっている。このRCC4細胞に遺伝子工学的にVHLを導入した細胞(RCC4-VHL細胞）と元のRCC4-EV細胞のプロポフォール毒性を比較したところRCC4細胞ではプロポフォールによる細胞死が起こりにくいことが明らかになった。
この現象の分子生物学的な機序を検討したところRCC4細胞では転写因子HIF-1のが持続的に活性化している事により細胞ではGLUT1・LDHAの働きにより、グルコースがピルビン酸→乳酸へと代謝される解糖系が優位な代謝経路に変換されている事、さらにまたPDK1の働きによりピルビン酸がミトコンドリアに運ばれアセチルCoAに変換される経路が抑制されるため、ミトコンドリア呼吸鎖への電子の供給が抑制されている事を見出した。
すなわちRCC4細胞で起こっているHIF-1活性化により細胞はミトコンドリア呼吸に頼らない代謝状態にリプログラミングされている事が判明した。
これにより、プロポフォールのミトコンドリア機能障害による呼吸鎖からの電子の漏れ出しが低減され結果としてプロポフォールによる活性酸素種(ROS)産生が抑制され細胞障害が軽減の機序であると結論つけられた。
このHIF-1活性化によるプロポフォールの細胞障害の軽減作用は、RCC4細胞のPDK-1をノックダウン(RNA干渉法により発現を抑制）したりHIF活性阻害薬YC-1を使用することで消失しました。一方通常状態でHIF-1の活性化が観察できないRCC4-VHL細胞やSHSY-5Y細胞にHIF水酸化酵素阻害薬であるn-PGやDMOGを加えると、VHL遺伝子の欠損によるHIF-1活性化と同様にプロポフォール による細胞障害に対する軽減作用が観察された。


### 論文における図の位置づけ

HIF-1の持続活性化が細胞の遺伝子発現とくに解糖系と関連ついた遺伝子発現に与える影響をgene ontology(GO)のGO:0061621 (canonical glycolysis)が包含する遺伝子について検討した。

この論文で示した細胞の酸素消費量(OCR)、解糖系代謝の代理マーカーである細胞外酸性度(ECAR)がRCC4-EV細胞においてそれぞれ抑制または更新していることが判明した。
この分子基盤を明らかにするためにRNA-seq法を用いてRCC4-EV細胞とRCC4-VHL細胞間の遺伝子発現をGene set enrichment analysisしたところ転写因子HIF-1 に依存するsignal pathwayが遺伝子セットとして同定された。
この結果を受けてさらに解糖系代謝のgene ontologyの発現に着目して遺伝子発現の異動を検討した結果がFigure 6bである。

### 何故このデザインの図にしたか

RCC4-EV細胞とRCC4-VHL細胞のGO:0061621 (canonical glycolysis)が包含する遺伝子について発現の差を可視化したかった。この目的の為には例えばheatmapを描くという方法もあったが遺伝子数が19と比較的に少ないので個別の遺伝子について発現の比率を計算する方法を採用した。
これによりRCC4-EV細胞とRCC4-VHL細胞での発現の差が可視化されたと考えている。
この手法は、この論文のFigure 6c, Figure 7fとfFgure 7gでも採用した。
特にfigure 6cの結果に基づきPDK1をsiRNAを用いて発現抑制する(Figure 8a, Figure 8b)という実験方針を策定することができた。

### ワークフロー

![workflow.png](https://github.com/khirota-kyt/dry_analysis/blob/master/workflow.png)

### 計算機環境

MacBook Pro (Retina, Mid 2012)
2.7 GHz Intel Core i7
16 GB 1600 Mhz DDR3
SSD 751 フラッシュストレージ

https://support.apple.com/kb/SP653

### OS 
OS X El Capitan (10.11.6)

### 使用するプログラミング言語・ツールとそのバージョン

human reference sequence file (hs37d5.fa) :  the 1000 Genomes Project ftp site (ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/ technical/reference/phase2_reference_assembly_sequence/),
annotated general feature format (gff) file: the Illumina iGenome ftp site (ftp://igenome:G3nom3s4u@ussd-ftp.illumina.com/Homo_ sapiens/NCBI/build37.2/). 



Quality Check: FastQC : http://www.bioinformatics.babraham.ac.uk/projects/fastqc/

Trimming: FASTX-Toolkit v0.0.14: http://hannonlab.cshl.edu/fastx_toolkit/



human genome index : bowtie-build in Bowtie v.2.2.93
The FASTQ files were aligned to the reference genomic sequence: Bowtie2 v2.2.9 and Samtools v.1.3.1 TopHat v.2.1.1 (default parameters)
Cufflinks (Cuffdiff) v2.1.1



Metascape (http://metascape.org/) was used for the gene set enrichment analysis3



Genes with the gene ontology (GO) annotations of ‘canonical glycolysis’ (GO:0061621), ‘pyruvate dehydroge- nase (acetyl-transferring) kinase activity’ (GO:0004740), ‘antioxidant activity’ (GO:0016909) and ‘regulation of reactive oxygen species biosynthetic process’ (GO:1903426-8) were extracted using Ensembl Biomart

sorted by the common logarithms of ([FPKM of RCC4-EV] + 1)/([FPKM of RCC4-VHL] + 1), calculated from the same Cuffdiff output file 



A histogram was generated using TIBCO Spotfire Desktop v7.6.0 with the “Better World” program license (TIBCO Spotfire, Inc., Palo Alto, CA, USA) (http://spotfire.tibco.com/better-world-donation-program/).

### データ入手先　サイズ

FASTQ files : RCC4-EV cells (DRR100656) and RCC4-VHL cells (DRR100657)

DRR100656.sra: ftp://ftp.ddbj.nig.ac.jp/ddbj_database/dra/sra/ByExp/sra/DRX/DRX094/DRX094089/DRR100656/DRR100656.sra
DRR100657.sra: ftp://ftp.ddbj.nig.ac.jp/ddbj_database/dra/sra/ByExp/sra/DRX/DRX094/DRX094090/DRR100657/DRR100657.sra

cuffdiffによる解析結果"gene_exp.diff"は以下のurlから入手可能である

https://figshare.com/articles/Results_of_Data_analysis_of_RNA-Seq/5353462

### 描画用ソースコード

https://github.com/khirota-kyt/dry_analysis/tree/master/scripts


### その他

論文で使用したfigureの作成はSpotfireを用いて行ったが、同等の描画をJupyter notebookで行う為のソースコードを上記urlに格納した。

