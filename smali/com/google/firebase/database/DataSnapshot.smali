.class public Lcom/google/firebase/database/DataSnapshot;
.super Ljava/lang/Object;


# instance fields
.field private final zzmjq:Lcom/google/android/gms/internal/zzejw;

.field private final zzmjr:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzejw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    iput-object p1, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjr:Lcom/google/firebase/database/DatabaseReference;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/firebase/database/DatabaseReference;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjr:Lcom/google/firebase/database/DatabaseReference;

    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjr:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    new-instance v1, Lcom/google/firebase/database/DataSnapshot;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzejw;->zzj(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/database/DataSnapshot;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzejw;)V

    return-object v1
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/zza;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/zza;-><init>(Lcom/google/firebase/database/DataSnapshot;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getChildrenCount()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjr:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjr:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/GenericTypeIndicator<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzelw;->zza(Ljava/lang/Object;Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzelw;->zza(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->getValue(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjr:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getParent()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzelv;->zzqi(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzelv;->zzqh(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjr:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/DataSnapshot;->zzmjq:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzekd;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    add-int/2addr v3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DataSnapshot { key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
