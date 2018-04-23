.class final Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;
.super Lcom/intermedia/model/retrofit/envelope/DeleteFriendEnvelope;
.source "AutoParcel_DeleteFriendEnvelope.java"


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final result:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope$1;

    invoke-direct {v0}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    const-class v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;-><init>(Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/intermedia/model/retrofit/envelope/DeleteFriendEnvelope;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->result:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/retrofit/envelope/DeleteFriendEnvelope;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 31
    check-cast p1, Lcom/intermedia/model/retrofit/envelope/DeleteFriendEnvelope;

    .line 32
    iget-boolean v1, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->result:Z

    invoke-virtual {p1}, Lcom/intermedia/model/retrofit/envelope/DeleteFriendEnvelope;->result()Z

    move-result p1

    if-ne v1, p1, :cond_1

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

    .line 41
    iget-boolean v0, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->result:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public result()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->result:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteFriendEnvelope{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 64
    iget-boolean p2, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_DeleteFriendEnvelope;->result:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
