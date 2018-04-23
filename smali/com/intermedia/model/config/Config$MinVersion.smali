.class public abstract Lcom/intermedia/model/config/Config$MinVersion;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MinVersion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/Config$MinVersion$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/intermedia/model/config/Config$MinVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/intermedia/model/config/Config$MinVersion;->builder()Lcom/intermedia/model/config/Config$MinVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/config/Config$MinVersion$Builder;->build()Lcom/intermedia/model/config/Config$MinVersion;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/Config$MinVersion;->DEFAULT:Lcom/intermedia/model/config/Config$MinVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/config/Config$MinVersion$Builder;
    .locals 2

    .line 47
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;-><init>()V

    const-string v1, "1.0.6"

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->android(Ljava/lang/String;)Lcom/intermedia/model/config/Config$MinVersion$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract android()Ljava/lang/String;
.end method

.method public abstract toBuilder()Lcom/intermedia/model/config/Config$MinVersion$Builder;
.end method
