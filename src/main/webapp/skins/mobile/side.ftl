<#if ADLabel!="">
${ADLabel}
</#if>
<div class="module">
    <div class="module-header">
        <h2>开源项目</h2>
    </div>
    <div class="module-panel">
        <ul class="module-list open-source">
            <li>
                <a target="_blank" href="https://github.com/b3log/solo"><b class="ft-red slogan">【Solo】</b></a>
                <a class="title" target="_blank" href="https://github.com/b3log/solo">GitHub 上 Star 数最多的 Java 博客</a>
            </li>
            <li>
                <a target="_blank" href="https://github.com/b3log/wide"><b class="ft-blue slogan">【Wide】</b></a>
                <a class="title" target="_blank" href="https://github.com/b3log/wide">Golang 黑科技之在线 IDE </a>
            </li>
            <li class="last">
                <a target="_blank" href="https://github.com/b3log/symphony"> <b class="ft-green slogan">【Sym】</b></a>
                <a class="title" target="_blank" href="https://github.com/b3log/symphony"> 黑客与画家的社区</a>
            </li>
        </ul>
    </div>
</div>
<#--
<#if navTrendTags?size!=0>
<div class="module">
    <div class="module-header">
        <h2>
            ${hotTopicLabel}
        </h2>
    </div>
    <div class="module-panel">
        <ul class="tags fn-clear">
            <#list navTrendTags as trendTag>
            <li>
                <a class="btn small" rel="nofollow" href="/tag/${trendTag.tagTitle?url('UTF-8')}">${trendTag.tagTitle}</a>
            </li>
            </#list>
        </ul>
    </div>
</div>
</#if>
-->
<#if sideHotArticles?size!=0>
<div class="module">
    <div class="module-header">
        <h2>
            ${hotArticleLabel}
        </h2>
    </div>
    <div class="module-panel">
        <ul class="module-list">
            <#list sideHotArticles as hotArticle>
            <li<#if !hotArticle_has_next> class="last"</#if>>
                <#if "someone" != hotArticle.articleAuthorName>
                <a rel="nofollow" href="/member/${hotArticle.articleAuthorName}"></#if>
                    <span class="avatar-small slogan"
                          style="background-image:url('${hotArticle.articleAuthorThumbnailURL}-64.jpg?${hotArticle.articleAuthor.userUpdateTime?c}')"></span>
                <#if "someone" != hotArticle.articleAuthorName></a></#if>
                <a rel="nofollow" class="title" title="${hotArticle.articleTitle}" href="${hotArticle.articlePermalink}">${hotArticle.articleTitleEmoj}</a>
            </li>
            </#list>
        </ul>
    </div>
</div>
</#if>
<#if sideTags?size!=0>
<div class="module">
    <div class="module-header">
        <h2>
            ${tagLabel}
        </h2>
    </div>
    <div class="module-panel">
        <ul class="tag-desc fn-clear">
            <#list sideTags as tag>
            <li>
                <span>
                    <#if tag.tagIconPath!="">
                    <img src="${staticServePath}/images/tags/${tag.tagIconPath}" alt="${tag.tagTitle}" /></#if><a rel="nofollow" href="/tag/${tag.tagTitle?url('utf-8')}">${tag.tagTitle}</a>
                </span>
                <div<#if tag.tagDescription == ''> style="width:auto"</#if>>
                    <div>${tag.tagDescription}</div>
                    <span class="fn-right">
                        <span class="ft-gray">${referenceLabel}</span> 
                        ${tag.tagReferenceCount} &nbsp;
                        <span class="ft-gray">${cmtLabel}</span>
                        ${tag.tagCommentCount}&nbsp;
                    </span>

                </div>
            </li>
            </#list>
        </ul>
    </div>
</div>
</#if>
