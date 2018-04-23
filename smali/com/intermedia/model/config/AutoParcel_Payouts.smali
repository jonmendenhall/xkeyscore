.class final Lcom/intermedia/model/config/AutoParcel_Payouts;
.super Lcom/intermedia/model/config/Payouts;
.source "AutoParcel_Payouts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/config/AutoParcel_Payouts;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final active:Z

.field private final mode:Ljava/lang/String;

.field private final threshold:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Payouts$1;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_Payouts$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_Payouts;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    const-class v0, Lcom/intermedia/model/config/AutoParcel_Payouts;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_Payouts;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 87
    sget-object v0, Lcom/intermedia/model/config/AutoParcel_Payouts;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/intermedia/model/config/AutoParcel_Payouts;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/intermedia/model/config/AutoParcel_Payouts;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/intermedia/model/config/AutoParcel_Payouts;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/config/AutoParcel_Payouts$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Payouts;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/intermedia/model/config/Payouts;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->active:Z

    .line 17
    iput-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->mode:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->threshold:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Lcom/intermedia/model/config/AutoParcel_Payouts$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/intermedia/model/config/AutoParcel_Payouts;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public active()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->active:Z

    return v0
.end method

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

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/config/Payouts;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 53
    check-cast p1, Lcom/intermedia/model/config/Payouts;

    .line 54
    iget-boolean v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->active:Z

    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->active()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->mode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->mode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->mode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->mode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->threshold:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->threshold()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->threshold:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->threshold()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 65
    iget-boolean v0, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->active:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 67
    iget-object v2, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->mode:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->mode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 69
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->threshold:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->threshold:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    return v0
.end method

.method public mode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public threshold()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->threshold:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Lcom/intermedia/model/config/Payouts$Builder;
    .locals 1

    .line 104
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;-><init>(Lcom/intermedia/model/config/Payouts;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Payouts{active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->threshold:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 92
    iget-boolean p2, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->active:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 93
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->mode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 94
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Payouts;->threshold:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
