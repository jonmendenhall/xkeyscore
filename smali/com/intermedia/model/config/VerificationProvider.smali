.class public abstract Lcom/intermedia/model/config/VerificationProvider;
.super Ljava/lang/Object;
.source "VerificationProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/VerificationProvider$Builder;
    }
.end annotation


# static fields
.field public static final FIREBASE:Ljava/lang/String; = "p0"

.field public static final IN_HOUSE:Ljava/lang/String; = "p1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/config/VerificationProvider$Builder;
    .locals 2

    .line 25
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;-><init>()V

    const-string v1, "p1"

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;->provider(Ljava/lang/String;)Lcom/intermedia/model/config/VerificationProvider$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract provider()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract toBuilder()Lcom/intermedia/model/config/VerificationProvider$Builder;
.end method
