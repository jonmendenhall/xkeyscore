.class final enum Lcom/amazonaws/util/EncodingSchemeEnum$3;
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

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/util/EncodingSchemeEnum;-><init>(Ljava/lang/String;ILcom/amazonaws/util/EncodingSchemeEnum$1;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 60
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
