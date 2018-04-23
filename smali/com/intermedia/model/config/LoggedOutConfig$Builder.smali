.class public abstract Lcom/intermedia/model/config/LoggedOutConfig$Builder;
.super Ljava/lang/Object;
.source "LoggedOutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/LoggedOutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/config/LoggedOutConfig;
.end method

.method public abstract verification(Lcom/intermedia/model/config/VerificationProvider;)Lcom/intermedia/model/config/LoggedOutConfig$Builder;
.end method
