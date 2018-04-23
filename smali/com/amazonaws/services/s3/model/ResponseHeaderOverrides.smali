.class public Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ResponseHeaderOverrides.java"


# static fields
.field private static final PARAMETER_ORDER:[Ljava/lang/String;

.field public static final RESPONSE_HEADER_CACHE_CONTROL:Ljava/lang/String; = "response-cache-control"

.field public static final RESPONSE_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "response-content-disposition"

.field public static final RESPONSE_HEADER_CONTENT_ENCODING:Ljava/lang/String; = "response-content-encoding"

.field public static final RESPONSE_HEADER_CONTENT_LANGUAGE:Ljava/lang/String; = "response-content-language"

.field public static final RESPONSE_HEADER_CONTENT_TYPE:Ljava/lang/String; = "response-content-type"

.field public static final RESPONSE_HEADER_EXPIRES:Ljava/lang/String; = "response-expires"


# instance fields
.field private cacheControl:Ljava/lang/String;

.field private contentDisposition:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLanguage:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expires:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "response-cache-control"

    const-string v1, "response-content-disposition"

    const-string v2, "response-content-encoding"

    const-string v3, "response-content-language"

    const-string v4, "response-content-type"

    const-string v5, "response-expires"

    .line 68
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->PARAMETER_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->expires:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentLanguage:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->expires:Ljava/lang/String;

    return-void
.end method

.method public withCacheControl(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setCacheControl(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContentDisposition(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentDisposition(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContentEncoding(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentEncoding(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContentLanguage(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentLanguage(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContentType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withExpires(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setExpires(Ljava/lang/String;)V

    return-object p0
.end method
