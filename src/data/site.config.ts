interface SiteConfig {
	author: string
	title: string
	description: string
	lang: string
	ogLocale: string
	shareMessage: string
	paginationSize: number
}

export const siteConfig: SiteConfig = {
	author: 'Sonia Lomo',
	title: 'The Fintech Guide', 
	description: 'For all your Fintech News', 
	lang: 'en-GB',
	ogLocale: 'en_GB',
	shareMessage: 'Share this post', 
	paginationSize: 6
}
