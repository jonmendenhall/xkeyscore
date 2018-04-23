.class final Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;
.super Lcom/intermedia/model/config/Config$MinVersion;
.source "AutoParcel_Config_MinVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final android:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    const-class v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/intermedia/model/config/Config$MinVersion;-><init>()V

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null android"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->android:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public android()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->android:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 35
    :cond_0
    instance-of v0, p1, Lcom/intermedia/model/config/Config$MinVersion;

    if-eqz v0, :cond_1

    .line 36
    check-cast p1, Lcom/intermedia/model/config/Config$MinVersion;

    .line 37
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->android:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config$MinVersion;->android()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->android:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Lcom/intermedia/model/config/Config$MinVersion$Builder;
    .locals 1

    .line 79
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;-><init>(Lcom/intermedia/model/config/Config$MinVersion;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinVersion{android="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->android:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 69
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;->android:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
