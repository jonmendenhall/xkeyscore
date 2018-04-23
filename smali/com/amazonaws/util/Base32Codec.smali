.class Lcom/amazonaws/util/Base32Codec;
.super Lcom/amazonaws/util/AbstractBase32Codec;
.source "Base32Codec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/Base32Codec$LazyHolder;
    }
.end annotation


# static fields
.field private static final OFFSET:I = 0x1a

.field private static final OFFSET_OF_2:I = 0x18


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/amazonaws/util/Base32Codec;->alphabets()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/AbstractBase32Codec;-><init>([B)V

    return-void
.end method

.method private static alphabets()[B
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 49
    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->toBytesDirect(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected pos(B)I
    .locals 3

    .line 58
    invoke-static {}, Lcom/amazonaws/util/Base32Codec$LazyHolder;->access$000()[B

    move-result-object v0

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid base 32 character: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
