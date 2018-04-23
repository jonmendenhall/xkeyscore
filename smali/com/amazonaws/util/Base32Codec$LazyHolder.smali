.class Lcom/amazonaws/util/Base32Codec$LazyHolder;
.super Ljava/lang/Object;
.source "Base32Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/Base32Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final DECODED:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/amazonaws/util/Base32Codec$LazyHolder;->decodeTable()[B

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/Base32Codec$LazyHolder;->DECODED:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 27
    sget-object v0, Lcom/amazonaws/util/Base32Codec$LazyHolder;->DECODED:[B

    return-object v0
.end method

.method private static decodeTable()[B
    .locals 4

    const/16 v0, 0x7b

    .line 31
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_3

    const/16 v3, 0x41

    if-lt v1, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_0

    add-int/lit8 v2, v1, -0x41

    int-to-byte v2, v2

    .line 35
    aput-byte v2, v0, v1

    goto :goto_1

    :cond_0
    const/16 v3, 0x32

    if-lt v1, v3, :cond_1

    const/16 v3, 0x37

    if-gt v1, v3, :cond_1

    add-int/lit8 v2, v1, -0x18

    int-to-byte v2, v2

    .line 37
    aput-byte v2, v0, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x61

    if-lt v1, v3, :cond_2

    if-gt v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x61

    int-to-byte v2, v2

    .line 39
    aput-byte v2, v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 41
    aput-byte v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
