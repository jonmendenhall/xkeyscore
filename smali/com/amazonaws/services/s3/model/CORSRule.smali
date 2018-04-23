.class public Lcom/amazonaws/services/s3/model/CORSRule;
.super Ljava/lang/Object;
.source "CORSRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    }
.end annotation


# instance fields
.field private allowedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;",
            ">;"
        }
    .end annotation
.end field

.field private allowedOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exposedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private maxAgeSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowedHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getAllowedMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedMethods:Ljava/util/List;

    return-object v0
.end method

.method public getAllowedOrigins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedOrigins:Ljava/util/List;

    return-object v0
.end method

.method public getExposedHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CORSRule;->exposedHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CORSRule;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/amazonaws/services/s3/model/CORSRule;->maxAgeSeconds:I

    return v0
.end method

.method public setAllowedHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedHeaders:Ljava/util/List;

    return-void
.end method

.method public varargs setAllowedHeaders([Ljava/lang/String;)V
    .locals 0

    .line 201
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedHeaders:Ljava/util/List;

    return-void
.end method

.method public setAllowedMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedMethods:Ljava/util/List;

    return-void
.end method

.method public varargs setAllowedMethods([Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;)V
    .locals 0

    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedMethods:Ljava/util/List;

    return-void
.end method

.method public setAllowedOrigins(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedOrigins:Ljava/util/List;

    return-void
.end method

.method public varargs setAllowedOrigins([Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedOrigins:Ljava/util/List;

    return-void
.end method

.method public setExposedHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->exposedHeaders:Ljava/util/List;

    return-void
.end method

.method public varargs setExposedHeaders([Ljava/lang/String;)V
    .locals 0

    .line 167
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->exposedHeaders:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->id:Ljava/lang/String;

    return-void
.end method

.method public setMaxAgeSeconds(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->maxAgeSeconds:I

    return-void
.end method

.method public withAllowedHeaders(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CORSRule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CORSRule;"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedHeaders:Ljava/util/List;

    return-object p0
.end method

.method public withAllowedMethods(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CORSRule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CORSRule;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedMethods:Ljava/util/List;

    return-object p0
.end method

.method public withAllowedOrigins(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CORSRule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CORSRule;"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->allowedOrigins:Ljava/util/List;

    return-object p0
.end method

.method public withExposedHeaders(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CORSRule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CORSRule;"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->exposedHeaders:Ljava/util/List;

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CORSRule;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->id:Ljava/lang/String;

    return-object p0
.end method

.method public withMaxAgeSeconds(I)Lcom/amazonaws/services/s3/model/CORSRule;
    .locals 0

    .line 151
    iput p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->maxAgeSeconds:I

    return-object p0
.end method
