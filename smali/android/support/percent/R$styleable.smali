.class public final Landroid/support/percent/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final PercentLayout_Layout:[I

.field public static final PercentLayout_Layout_layout_aspectRatio:I = 0x0

.field public static final PercentLayout_Layout_layout_heightPercent:I = 0x1

.field public static final PercentLayout_Layout_layout_marginBottomPercent:I = 0x2

.field public static final PercentLayout_Layout_layout_marginEndPercent:I = 0x3

.field public static final PercentLayout_Layout_layout_marginLeftPercent:I = 0x4

.field public static final PercentLayout_Layout_layout_marginPercent:I = 0x5

.field public static final PercentLayout_Layout_layout_marginRightPercent:I = 0x6

.field public static final PercentLayout_Layout_layout_marginStartPercent:I = 0x7

.field public static final PercentLayout_Layout_layout_marginTopPercent:I = 0x8

.field public static final PercentLayout_Layout_layout_widthPercent:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 128
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/percent/R$styleable;->FontFamily:[I

    .line 135
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/percent/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xa

    .line 142
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/percent/R$styleable;->PercentLayout_Layout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400bb
        0x7f0400bc
        0x7f0400bd
        0x7f0400be
        0x7f0400bf
        0x7f0400c0
    .end array-data

    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f0400b9
        0x7f0400c1
        0x7f0400c2
    .end array-data

    :array_2
    .array-data 4
        0x7f0400e3
        0x7f040119
        0x7f04011c
        0x7f04011d
        0x7f04011e
        0x7f04011f
        0x7f040120
        0x7f040121
        0x7f040122
        0x7f040126
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
