.class public abstract Lcom/intermedia/model/config/VerificationProvider$Builder;
.super Ljava/lang/Object;
.source "VerificationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/VerificationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/config/VerificationProvider;
.end method

.method public abstract provider(Ljava/lang/String;)Lcom/intermedia/model/config/VerificationProvider$Builder;
.end method
