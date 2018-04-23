.class public final enum Lcom/amazonaws/util/Base16;
.super Ljava/lang/Enum;
.source "Base16.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/Base16;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/Base16;

.field private static final CODEC:Lcom/amazonaws/util/Base16Codec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Lcom/amazonaws/util/Base16;

    sput-object v0, Lcom/amazonaws/util/Base16;->$VALUES:[Lcom/amazonaws/util/Base16;

    .line 26
    new-instance v0, Lcom/amazonaws/util/Base16Codec;

    invoke-direct {v0}, Lcom/amazonaws/util/Base16Codec;-><init>()V

    sput-object v0, Lcom/amazonaws/util/Base16;->CODEC:Lcom/amazonaws/util/Base16Codec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 56
    new-array p0, p0, [B

    return-object p0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 58
    invoke-static {p0, v0}, Lcom/amazonaws/util/CodecUtils;->sanitize(Ljava/lang/String;[B)I

    move-result p0

    .line 59
    sget-object v1, Lcom/amazonaws/util/Base16;->CODEC:Lcom/amazonaws/util/Base16Codec;

    invoke-virtual {v1, v0, p0}, Lcom/amazonaws/util/Base16Codec;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)[B
    .locals 2

    if-eqz p0, :cond_1

    .line 68
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazonaws/util/Base16;->CODEC:Lcom/amazonaws/util/Base16Codec;

    array-length v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/amazonaws/util/Base16Codec;->decode([BI)[B

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static encode([B)[B
    .locals 1

    if-eqz p0, :cond_1

    .line 43
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazonaws/util/Base16;->CODEC:Lcom/amazonaws/util/Base16Codec;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/Base16Codec;->encode([B)[B

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs encodeAsString([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazonaws/util/Base16;->CODEC:Lcom/amazonaws/util/Base16Codec;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/Base16Codec;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/CodecUtils;->toStringDirect([B)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/Base16;
    .locals 1

    .line 23
    const-class v0, Lcom/amazonaws/util/Base16;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/Base16;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/Base16;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazonaws/util/Base16;->$VALUES:[Lcom/amazonaws/util/Base16;

    invoke-virtual {v0}, [Lcom/amazonaws/util/Base16;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/Base16;

    return-object v0
.end method
