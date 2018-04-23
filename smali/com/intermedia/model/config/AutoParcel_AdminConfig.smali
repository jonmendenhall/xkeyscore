.class final Lcom/intermedia/model/config/AutoParcel_AdminConfig;
.super Lcom/intermedia/model/config/AdminConfig;
.source "AutoParcel_AdminConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AutoParcel_AdminConfig$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/config/AutoParcel_AdminConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/model/config/AdminConfig$SegmentToken;",
            ">;"
        }
    .end annotation
.end field

.field private final showTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_AdminConfig$1;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_AdminConfig$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    const-class v0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 80
    sget-object v0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/intermedia/model/config/AutoParcel_AdminConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/config/AutoParcel_AdminConfig$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_AdminConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/config/AdminConfig$SegmentToken;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/intermedia/model/config/AdminConfig;-><init>()V

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null segments"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->segments:Ljava/util/List;

    if-nez p2, :cond_1

    .line 20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null showTypes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    iput-object p2, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->showTypes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/intermedia/model/config/AutoParcel_AdminConfig$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/intermedia/model/config/AutoParcel_AdminConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/config/AdminConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 49
    check-cast p1, Lcom/intermedia/model/config/AdminConfig;

    .line 50
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->segments:Ljava/util/List;

    invoke-virtual {p1}, Lcom/intermedia/model/config/AdminConfig;->segments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->showTypes:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Lcom/intermedia/model/config/AdminConfig;->showTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->showTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public segments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/model/config/AdminConfig$SegmentToken;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->segments:Ljava/util/List;

    return-object v0
.end method

.method public showTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->showTypes:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdminConfig{segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->segments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->showTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 85
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->segments:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 86
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_AdminConfig;->showTypes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
