.class final Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;
.super Ljava/lang/Object;
.source "AutoParcel_Config_MinVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;
    .locals 2

    .line 53
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;-><init>(Landroid/os/Parcel;Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;
    .locals 0

    .line 57
    new-array p1, p1, [Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;->newArray(I)[Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;

    move-result-object p1

    return-object p1
.end method
