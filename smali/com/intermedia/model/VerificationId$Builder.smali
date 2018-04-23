.class public abstract Lcom/intermedia/model/VerificationId$Builder;
.super Ljava/lang/Object;
.source "VerificationId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/VerificationId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/VerificationId;
.end method

.method public abstract callsEnabled(Z)Lcom/intermedia/model/VerificationId$Builder;
.end method

.method public abstract expires(Ljava/util/Date;)Lcom/intermedia/model/VerificationId$Builder;
.end method

.method public abstract phone(Ljava/lang/String;)Lcom/intermedia/model/VerificationId$Builder;
.end method

.method public abstract retrySeconds(J)Lcom/intermedia/model/VerificationId$Builder;
.end method

.method public abstract verificationId(Ljava/lang/String;)Lcom/intermedia/model/VerificationId$Builder;
.end method
