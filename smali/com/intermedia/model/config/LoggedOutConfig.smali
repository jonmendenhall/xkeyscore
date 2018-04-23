.class public abstract Lcom/intermedia/model/config/LoggedOutConfig;
.super Ljava/lang/Object;
.source "LoggedOutConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/LoggedOutConfig$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/config/LoggedOutConfig$Builder;
    .locals 2

    .line 22
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$Builder;-><init>()V

    .line 23
    invoke-static {}, Lcom/intermedia/model/config/VerificationProvider;->builder()Lcom/intermedia/model/config/VerificationProvider$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/model/config/VerificationProvider$Builder;->build()Lcom/intermedia/model/config/VerificationProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$Builder;->verification(Lcom/intermedia/model/config/VerificationProvider;)Lcom/intermedia/model/config/LoggedOutConfig$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract toBuilder()Lcom/intermedia/model/config/LoggedOutConfig$Builder;
.end method

.method public abstract verification()Lcom/intermedia/model/config/VerificationProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
