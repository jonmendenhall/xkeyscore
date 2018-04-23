.class Lcom/neovisionaries/ws/client/FixedDistanceHuffman;
.super Lcom/neovisionaries/ws/client/Huffman;
.source "FixedDistanceHuffman.java"


# static fields
.field private static final INSTANCE:Lcom/neovisionaries/ws/client/FixedDistanceHuffman;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/neovisionaries/ws/client/FixedDistanceHuffman;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/FixedDistanceHuffman;-><init>()V

    sput-object v0, Lcom/neovisionaries/ws/client/FixedDistanceHuffman;->INSTANCE:Lcom/neovisionaries/ws/client/FixedDistanceHuffman;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/neovisionaries/ws/client/FixedDistanceHuffman;->buildCodeLensFromSym()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/Huffman;-><init>([I)V

    return-void
.end method

.method private static buildCodeLensFromSym()[I
    .locals 4

    const/16 v0, 0x20

    .line 37
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x5

    .line 41
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getInstance()Lcom/neovisionaries/ws/client/FixedDistanceHuffman;
    .locals 1

    .line 53
    sget-object v0, Lcom/neovisionaries/ws/client/FixedDistanceHuffman;->INSTANCE:Lcom/neovisionaries/ws/client/FixedDistanceHuffman;

    return-object v0
.end method
