.class final Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;
.super Lcom/intermedia/model/config/Config$MinVersion$Builder;
.source "AutoParcel_Config_MinVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private android:Ljava/lang/String;

.field private final set$:Ljava/util/BitSet;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/intermedia/model/config/Config$MinVersion$Builder;-><init>()V

    .line 83
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/config/Config$MinVersion;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/intermedia/model/config/Config$MinVersion$Builder;-><init>()V

    .line 83
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->set$:Ljava/util/BitSet;

    .line 88
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config$MinVersion;->android()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->android(Ljava/lang/String;)Lcom/intermedia/model/config/Config$MinVersion$Builder;

    return-void
.end method


# virtual methods
.method public android(Ljava/lang/String;)Lcom/intermedia/model/config/Config$MinVersion$Builder;
    .locals 1

    .line 92
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->android:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public build()Lcom/intermedia/model/config/Config$MinVersion;
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const-string v0, "android"

    .line 99
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 104
    iget-object v4, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$Builder;->android:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intermedia/model/config/AutoParcel_Config_MinVersion;-><init>(Ljava/lang/String;Lcom/intermedia/model/config/AutoParcel_Config_MinVersion$1;)V

    return-object v0
.end method
