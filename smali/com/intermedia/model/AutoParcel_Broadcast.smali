.class final Lcom/intermedia/model/AutoParcel_Broadcast;
.super Lcom/intermedia/model/Broadcast;
.source "AutoParcel_Broadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_Broadcast$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_Broadcast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final broadcastId:Ljava/lang/Long;

.field private final socketUrl:Ljava/lang/String;

.field private final state:Ljava/lang/String;

.field private final streamUrl:Ljava/lang/String;

.field private final streams:Lcom/intermedia/model/Streams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/intermedia/model/AutoParcel_Broadcast$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_Broadcast$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_Broadcast;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 120
    const-class v0, Lcom/intermedia/model/AutoParcel_Broadcast;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_Broadcast;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 123
    sget-object v0, Lcom/intermedia/model/AutoParcel_Broadcast;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Long;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Broadcast;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/intermedia/model/Streams;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Broadcast;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Broadcast;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Broadcast;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/intermedia/model/AutoParcel_Broadcast;-><init>(Ljava/lang/Long;Lcom/intermedia/model/Streams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_Broadcast$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_Broadcast;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Lcom/intermedia/model/Streams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/intermedia/model/Broadcast;-><init>()V

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null broadcastId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->broadcastId:Ljava/lang/Long;

    if-nez p2, :cond_1

    .line 25
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null streams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    iput-object p2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streams:Lcom/intermedia/model/Streams;

    if-nez p3, :cond_2

    .line 29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null socketUrl"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    iput-object p3, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->socketUrl:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->state:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streamUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Lcom/intermedia/model/Streams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_Broadcast$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/intermedia/model/AutoParcel_Broadcast;-><init>(Ljava/lang/Long;Lcom/intermedia/model/Streams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public broadcastId()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->broadcastId:Ljava/lang/Long;

    return-object v0
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

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Broadcast;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 83
    check-cast p1, Lcom/intermedia/model/Broadcast;

    .line 84
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->broadcastId:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streams:Lcom/intermedia/model/Streams;

    .line 85
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->streams()Lcom/intermedia/model/Streams;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->socketUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->socketUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->state:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->state()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->state:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->state()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streamUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->streamUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streamUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->streamUrl()Ljava/lang/String;

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

    .line 97
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->broadcastId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 99
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streams:Lcom/intermedia/model/Streams;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 101
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->socketUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 103
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->state:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->state:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 105
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streamUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streamUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public socketUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->socketUrl:Ljava/lang/String;

    return-object v0
.end method

.method public state()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->state:Ljava/lang/String;

    return-object v0
.end method

.method public streamUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public streams()Lcom/intermedia/model/Streams;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streams:Lcom/intermedia/model/Streams;

    return-object v0
.end method

.method public toBuilder()Lcom/intermedia/model/Broadcast$Builder;
    .locals 1

    .line 142
    new-instance v0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;-><init>(Lcom/intermedia/model/Broadcast;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast{broadcastId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->broadcastId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streams:Lcom/intermedia/model/Streams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socketUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->socketUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", streamUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streamUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 128
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->broadcastId:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 129
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streams:Lcom/intermedia/model/Streams;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 130
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->socketUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 131
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 132
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Broadcast;->streamUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
