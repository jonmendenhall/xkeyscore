.class final enum Lcom/amazonaws/util/EncodingSchemeEnum$2;
.super Lcom/amazonaws/util/EncodingSchemeEnum;
.source "EncodingSchemeEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/EncodingSchemeEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/util/EncodingSchemeEnum;-><init>(Ljava/lang/String;ILcom/amazonaws/util/EncodingSchemeEnum$1;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/amazonaws/util/Base32;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/amazonaws/util/Base32;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
