.class public final Lcom/google/android/gms/internal/zzeia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeib;


# instance fields
.field private final zzmzl:Lcom/google/android/gms/internal/zzedh;

.field private final zzmzn:Lcom/google/android/gms/internal/zzeic;

.field private final zzmzr:Lcom/google/firebase/database/DataSnapshot;

.field private final zzmzs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeic;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeia;->zzmzn:Lcom/google/android/gms/internal/zzeic;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeia;->zzmzl:Lcom/google/android/gms/internal/zzedh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeia;->zzmzr:Lcom/google/firebase/database/DataSnapshot;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeia;->zzmzs:Ljava/lang/String;

    return-void
.end method

.method private final zzbsy()Lcom/google/android/gms/internal/zzedk;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeia;->zzmzr:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/Query;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeia;->zzmzn:Lcom/google/android/gms/internal/zzeic;

    sget-object v2, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwj()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeia;->zzmzn:Lcom/google/android/gms/internal/zzeic;

    sget-object v1, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeia;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeia;->zzmzn:Lcom/google/android/gms/internal/zzeic;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeia;->zzmzr:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v3, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeia;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeia;->zzmzn:Lcom/google/android/gms/internal/zzeic;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeia;->zzmzr:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v3}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeia;->zzmzr:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v4, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": { "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbyc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeia;->zzmzl:Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzedh;->zza(Lcom/google/android/gms/internal/zzeia;)V

    return-void
.end method

.method public final zzbye()Lcom/google/android/gms/internal/zzeic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeia;->zzmzn:Lcom/google/android/gms/internal/zzeic;

    return-object v0
.end method

.method public final zzbyh()Lcom/google/firebase/database/DataSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeia;->zzmzr:Lcom/google/firebase/database/DataSnapshot;

    return-object v0
.end method

.method public final zzbyi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeia;->zzmzs:Ljava/lang/String;

    return-object v0
.end method
