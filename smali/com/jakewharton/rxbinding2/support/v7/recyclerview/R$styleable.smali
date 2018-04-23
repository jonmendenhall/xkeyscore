.class public final Lcom/jakewharton/rxbinding2/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v7/recyclerview/R;
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

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 134
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jakewharton/rxbinding2/support/v7/recyclerview/R$styleable;->FontFamily:[I

    .line 141
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jakewharton/rxbinding2/support/v7/recyclerview/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xb

    .line 148
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jakewharton/rxbinding2/support/v7/recyclerview/R$styleable;->RecyclerView:[I

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
        0x10100c4
        0x10100f1
        0x7f0400b4
        0x7f0400b5
        0x7f0400b6
        0x7f0400b7
        0x7f0400b8
        0x7f0400e0
        0x7f04015a
        0x7f04016b
        0x7f040171
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
